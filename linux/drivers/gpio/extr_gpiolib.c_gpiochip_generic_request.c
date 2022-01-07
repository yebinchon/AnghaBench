
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {unsigned int base; } ;


 int pinctrl_gpio_request (unsigned int) ;

int gpiochip_generic_request(struct gpio_chip *chip, unsigned offset)
{
 return pinctrl_gpio_request(chip->gpiodev->base + offset);
}
