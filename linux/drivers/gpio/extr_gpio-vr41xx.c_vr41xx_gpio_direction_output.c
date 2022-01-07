
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int GPIO_OUTPUT ;
 int giu_set_direction (struct gpio_chip*,unsigned int,int ) ;
 int vr41xx_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int vr41xx_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
    int value)
{
 vr41xx_gpio_set(chip, offset, value);

 return giu_set_direction(chip, offset, GPIO_OUTPUT);
}
