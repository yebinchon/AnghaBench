
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int last_x; int last_y; int input_dev; scalar_t__ y_inverted; scalar_t__ x_inverted; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static inline void report_pen_down(struct da9034_touch *touch)
{
 int x = touch->last_x;
 int y = touch->last_y;

 x &= 0xfff;
 if (touch->x_inverted)
  x = 1024 - x;
 y &= 0xfff;
 if (touch->y_inverted)
  y = 1024 - y;

 input_report_abs(touch->input_dev, ABS_X, x);
 input_report_abs(touch->input_dev, ABS_Y, y);
 input_report_key(touch->input_dev, BTN_TOUCH, 1);

 input_sync(touch->input_dev);
}
