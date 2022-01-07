
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {int owner; } ;


 int gpiochip_unlock_as_irq (struct gpio_chip*,unsigned int) ;
 int module_put (int ) ;

void gpiochip_relres_irq(struct gpio_chip *chip, unsigned int offset)
{
 gpiochip_unlock_as_irq(chip, offset);
 module_put(chip->gpiodev->owner);
}
