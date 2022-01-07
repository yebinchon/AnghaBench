
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int em_gio_direction_input (struct gpio_chip*,unsigned int) ;
 int pinctrl_gpio_free (unsigned int) ;

__attribute__((used)) static void em_gio_free(struct gpio_chip *chip, unsigned offset)
{
 pinctrl_gpio_free(chip->base + offset);




 em_gio_direction_input(chip, offset);
}
