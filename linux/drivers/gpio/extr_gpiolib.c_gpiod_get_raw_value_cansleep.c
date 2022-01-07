
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int VALIDATE_DESC (struct gpio_desc const*) ;
 int extra_checks ;
 int gpiod_get_raw_value_commit (struct gpio_desc const*) ;
 int might_sleep_if (int ) ;

int gpiod_get_raw_value_cansleep(const struct gpio_desc *desc)
{
 might_sleep_if(extra_checks);
 VALIDATE_DESC(desc);
 return gpiod_get_raw_value_commit(desc);
}
