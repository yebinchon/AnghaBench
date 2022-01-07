
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_2d_axis_alignment {scalar_t__ swap_axes; scalar_t__ flip_y; scalar_t__ flip_x; } ;
struct rmi_2d_sensor {int input; struct rmi_2d_axis_alignment axis_align; } ;


 int REL_X ;
 int REL_Y ;
 int RMI_2D_REL_POS_MAX ;
 int RMI_2D_REL_POS_MIN ;
 int input_report_rel (int ,int ,int) ;
 int max (int ,int) ;
 int min (int ,int) ;
 int swap (int,int) ;

void rmi_2d_sensor_rel_report(struct rmi_2d_sensor *sensor, int x, int y)
{
 struct rmi_2d_axis_alignment *axis_align = &sensor->axis_align;

 x = min(RMI_2D_REL_POS_MAX, max(RMI_2D_REL_POS_MIN, (int)x));
 y = min(RMI_2D_REL_POS_MAX, max(RMI_2D_REL_POS_MIN, (int)y));

 if (axis_align->flip_x)
  x = min(RMI_2D_REL_POS_MAX, -x);

 if (axis_align->flip_y)
  y = min(RMI_2D_REL_POS_MAX, -y);

 if (axis_align->swap_axes)
  swap(x, y);

 if (x || y) {
  input_report_rel(sensor->input, REL_X, x);
  input_report_rel(sensor->input, REL_Y, y);
 }
}
