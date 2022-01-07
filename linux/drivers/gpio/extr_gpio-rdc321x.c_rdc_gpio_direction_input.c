
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int rdc_gpio_config (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int rdc_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 return rdc_gpio_config(chip, gpio, 1);
}
