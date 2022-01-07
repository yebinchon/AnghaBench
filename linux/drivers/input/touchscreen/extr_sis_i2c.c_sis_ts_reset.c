
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_ts_data {scalar_t__ reset_gpio; } ;


 int gpiod_set_value (scalar_t__,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sis_ts_reset(struct sis_ts_data *ts)
{
 if (ts->reset_gpio) {

  usleep_range(1000, 2000);
  gpiod_set_value(ts->reset_gpio, 1);
  usleep_range(1000, 2000);
  gpiod_set_value(ts->reset_gpio, 0);
  msleep(100);
 }
}
