
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchscreen_properties {int dummy; } ;
struct input_dev {int dummy; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_X ;
 int ABS_Y ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int touchscreen_apply_prop_to_x_y (struct touchscreen_properties const*,unsigned int*,unsigned int*) ;

void touchscreen_report_pos(struct input_dev *input,
       const struct touchscreen_properties *prop,
       unsigned int x, unsigned int y,
       bool multitouch)
{
 touchscreen_apply_prop_to_x_y(prop, &x, &y);
 input_report_abs(input, multitouch ? ABS_MT_POSITION_X : ABS_X, x);
 input_report_abs(input, multitouch ? ABS_MT_POSITION_Y : ABS_Y, y);
}
