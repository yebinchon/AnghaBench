
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxtet_gpio_chip {int dev; TYPE_1__* desc; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int in_mask; int out_mask; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int MOXTET_GPIO_INPUTS ;
 struct moxtet_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int moxtet_device_read (int ) ;
 int moxtet_device_written (int ) ;

__attribute__((used)) static int moxtet_gpio_get_value(struct gpio_chip *gc, unsigned int offset)
{
 struct moxtet_gpio_chip *chip = gpiochip_get_data(gc);
 int ret;

 if (chip->desc->in_mask & BIT(offset)) {
  ret = moxtet_device_read(chip->dev);
 } else if (chip->desc->out_mask & BIT(offset)) {
  ret = moxtet_device_written(chip->dev);
  if (ret >= 0)
   ret <<= MOXTET_GPIO_INPUTS;
 } else {
  return -EINVAL;
 }

 if (ret < 0)
  return ret;

 return !!(ret & BIT(offset));
}
