
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int VALIDATE_DESC_VOID (struct gpio_desc*) ;
 int extra_checks ;
 int gpiod_set_raw_value_commit (struct gpio_desc*,int) ;
 int might_sleep_if (int ) ;

void gpiod_set_raw_value_cansleep(struct gpio_desc *desc, int value)
{
 might_sleep_if(extra_checks);
 VALIDATE_DESC_VOID(desc);
 gpiod_set_raw_value_commit(desc, value);
}
