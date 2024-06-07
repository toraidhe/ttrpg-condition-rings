use <./text_on/text_on.scad>
textHeight = 6;
circleHeight = textHeight/1.5;
condition = "HASTENED";
innerSize=25/2;
ringWidth = 3;
textOffset = ringWidth/2;
txtSize = 6;
txtRadius = innerSize+(txtSize/2);
outerSize=innerSize+ringWidth;
rotation = 180;
font = "Segoe UI:style=Black";//"Rage Italic:style=Regular";

rotate([0,0,0])
{
    translate([0,0,textHeight/2])
    {
        color("Green")
        text_on_circle(t=condition,r=txtRadius,rotate=180, size = txtSize, extrusion_height = textHeight, font=font);
        color("Green")
        text_on_circle(t=condition,r=txtRadius,rotate=0, size = txtSize, extrusion_height = textHeight, font=font);
    }
}
difference(){
    linear_extrude((circleHeight))
        circle(r=outerSize);
    translate([0,0,-3])
    linear_extrude(9)
        circle(r=innerSize);
}