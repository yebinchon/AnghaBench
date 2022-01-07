
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int lpc18xx_gpio_direction (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int lpc18xx_gpio_direction_input(struct gpio_chip *chip,
     unsigned offset)
{
 return lpc18xx_gpio_direction(chip, offset, 0);
}
