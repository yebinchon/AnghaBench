
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void ucb1400_ts_report_event(struct input_dev *idev, u16 pressure, u16 x, u16 y)
{
 input_report_abs(idev, ABS_X, x);
 input_report_abs(idev, ABS_Y, y);
 input_report_abs(idev, ABS_PRESSURE, pressure);
 input_report_key(idev, BTN_TOUCH, 1);
 input_sync(idev);
}
