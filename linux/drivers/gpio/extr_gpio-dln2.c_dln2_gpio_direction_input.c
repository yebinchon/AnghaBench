
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int DLN2_GPIO_DIRECTION_IN ;
 int dln2_gpio_set_direction (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int dln2_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 return dln2_gpio_set_direction(chip, offset, DLN2_GPIO_DIRECTION_IN);
}
