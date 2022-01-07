
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {unsigned int base; } ;


 int pinctrl_gpio_set_config (unsigned int,unsigned long) ;

int gpiochip_generic_config(struct gpio_chip *chip, unsigned offset,
       unsigned long config)
{
 return pinctrl_gpio_set_config(chip->gpiodev->base + offset, config);
}
