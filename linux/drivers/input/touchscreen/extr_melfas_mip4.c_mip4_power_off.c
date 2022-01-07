
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mip4_ts {scalar_t__ gpio_ce; } ;


 int gpiod_set_value_cansleep (scalar_t__,int ) ;

__attribute__((used)) static void mip4_power_off(struct mip4_ts *ts)
{
 if (ts->gpio_ce)
  gpiod_set_value_cansleep(ts->gpio_ce, 0);
}
