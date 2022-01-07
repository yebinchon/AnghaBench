
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int pen_down; int dev; int idev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int dev_dbg (int ,char*,int,int,int) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void tsc200x_update_pen_state(struct tsc200x *ts,
         int x, int y, int pressure)
{
 if (pressure) {
  input_report_abs(ts->idev, ABS_X, x);
  input_report_abs(ts->idev, ABS_Y, y);
  input_report_abs(ts->idev, ABS_PRESSURE, pressure);
  if (!ts->pen_down) {
   input_report_key(ts->idev, BTN_TOUCH, !!pressure);
   ts->pen_down = 1;
  }
 } else {
  input_report_abs(ts->idev, ABS_PRESSURE, 0);
  if (ts->pen_down) {
   input_report_key(ts->idev, BTN_TOUCH, 0);
   ts->pen_down = 0;
  }
 }
 input_sync(ts->idev);
 dev_dbg(ts->dev, "point(%4d,%4d), pressure (%4d)\n", x, y,
  pressure);
}
