
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxtet_gpio_chip {TYPE_1__* desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int out_mask; int in_mask; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int ENOTSUPP ;
 struct moxtet_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int moxtet_gpio_set_value (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int moxtet_gpio_direction_output(struct gpio_chip *gc,
     unsigned int offset, int val)
{
 struct moxtet_gpio_chip *chip = gpiochip_get_data(gc);

 if (chip->desc->out_mask & BIT(offset))
  moxtet_gpio_set_value(gc, offset, val);
 else if (chip->desc->in_mask & BIT(offset))
  return -ENOTSUPP;
 else
  return -EINVAL;

 return 0;
}
