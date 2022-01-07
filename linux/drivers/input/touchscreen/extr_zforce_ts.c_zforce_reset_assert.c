
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {int gpio_rst; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void zforce_reset_assert(struct zforce_ts *ts)
{
 gpiod_set_value_cansleep(ts->gpio_rst, 1);
}
