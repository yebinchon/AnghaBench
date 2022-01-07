
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxtet_gpio_chip {TYPE_1__* desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int in_mask; int out_mask; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int ENOTSUPP ;
 struct moxtet_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int moxtet_gpio_direction_input(struct gpio_chip *gc,
           unsigned int offset)
{
 struct moxtet_gpio_chip *chip = gpiochip_get_data(gc);

 if (chip->desc->in_mask & BIT(offset))
  return 0;
 else if (chip->desc->out_mask & BIT(offset))
  return -ENOTSUPP;
 else
  return -EINVAL;
}
