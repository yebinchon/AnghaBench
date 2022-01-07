
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_desc {int flags; TYPE_2__* gdev; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int can_sleep; } ;


 int FLAG_ACTIVE_LOW ;
 int VALIDATE_DESC (struct gpio_desc const*) ;
 int WARN_ON (int ) ;
 int gpiod_get_raw_value_commit (struct gpio_desc const*) ;
 scalar_t__ test_bit (int ,int *) ;

int gpiod_get_value(const struct gpio_desc *desc)
{
 int value;

 VALIDATE_DESC(desc);

 WARN_ON(desc->gdev->chip->can_sleep);

 value = gpiod_get_raw_value_commit(desc);
 if (value < 0)
  return value;

 if (test_bit(FLAG_ACTIVE_LOW, &desc->flags))
  value = !value;

 return value;
}
