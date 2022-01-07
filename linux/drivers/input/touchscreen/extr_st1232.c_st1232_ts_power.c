
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st1232_ts_data {scalar_t__ reset_gpio; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;

__attribute__((used)) static void st1232_ts_power(struct st1232_ts_data *ts, bool poweron)
{
 if (ts->reset_gpio)
  gpiod_set_value_cansleep(ts->reset_gpio, !poweron);
}
