
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; } ;


 int FLAG_ACTIVE_LOW ;
 int FLAG_OPEN_DRAIN ;
 int FLAG_OPEN_SOURCE ;
 int gpio_set_open_drain_value_commit (struct gpio_desc*,int) ;
 int gpio_set_open_source_value_commit (struct gpio_desc*,int) ;
 int gpiod_set_raw_value_commit (struct gpio_desc*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gpiod_set_value_nocheck(struct gpio_desc *desc, int value)
{
 if (test_bit(FLAG_ACTIVE_LOW, &desc->flags))
  value = !value;
 if (test_bit(FLAG_OPEN_DRAIN, &desc->flags))
  gpio_set_open_drain_value_commit(desc, value);
 else if (test_bit(FLAG_OPEN_SOURCE, &desc->flags))
  gpio_set_open_source_value_commit(desc, value);
 else
  gpiod_set_raw_value_commit(desc, value);
}
