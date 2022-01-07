
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {int owner; } ;


 int ENODEV ;
 int chip_err (struct gpio_chip*,char*,unsigned int) ;
 int gpiochip_lock_as_irq (struct gpio_chip*,unsigned int) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

int gpiochip_reqres_irq(struct gpio_chip *chip, unsigned int offset)
{
 int ret;

 if (!try_module_get(chip->gpiodev->owner))
  return -ENODEV;

 ret = gpiochip_lock_as_irq(chip, offset);
 if (ret) {
  chip_err(chip, "unable to lock HW IRQ %u for IRQ\n", offset);
  module_put(chip->gpiodev->owner);
  return ret;
 }
 return 0;
}
