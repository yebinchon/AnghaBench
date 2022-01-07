
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct bu21029_ts_data {int in_dev; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 struct bu21029_ts_data* bu21029 ;
 struct bu21029_ts_data* from_timer (int ,struct timer_list*,int ) ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int timer ;

__attribute__((used)) static void bu21029_touch_release(struct timer_list *t)
{
 struct bu21029_ts_data *bu21029 = from_timer(bu21029, t, timer);

 input_report_abs(bu21029->in_dev, ABS_PRESSURE, 0);
 input_report_key(bu21029->in_dev, BTN_TOUCH, 0);
 input_sync(bu21029->in_dev);
}
