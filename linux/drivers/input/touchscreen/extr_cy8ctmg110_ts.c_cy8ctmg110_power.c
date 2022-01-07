
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cy8ctmg110 {scalar_t__ reset_pin; } ;


 int gpio_direction_output (scalar_t__,int) ;

__attribute__((used)) static void cy8ctmg110_power(struct cy8ctmg110 *ts, bool poweron)
{
 if (ts->reset_pin)
  gpio_direction_output(ts->reset_pin, 1 - poweron);
}
