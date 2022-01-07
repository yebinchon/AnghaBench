
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; } ;


 int FLAG_ACTIVE_LOW ;
 int VALIDATE_DESC (struct gpio_desc const*) ;
 int extra_checks ;
 int gpiod_get_raw_value_commit (struct gpio_desc const*) ;
 int might_sleep_if (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int gpiod_get_value_cansleep(const struct gpio_desc *desc)
{
 int value;

 might_sleep_if(extra_checks);
 VALIDATE_DESC(desc);
 value = gpiod_get_raw_value_commit(desc);
 if (value < 0)
  return value;

 if (test_bit(FLAG_ACTIVE_LOW, &desc->flags))
  value = !value;

 return value;
}
