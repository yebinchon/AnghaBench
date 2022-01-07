
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int pinctrl_gpio_request (unsigned int) ;

__attribute__((used)) static int em_gio_request(struct gpio_chip *chip, unsigned offset)
{
 return pinctrl_gpio_request(chip->base + offset);
}
