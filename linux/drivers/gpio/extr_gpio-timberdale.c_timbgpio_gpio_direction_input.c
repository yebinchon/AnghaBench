
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int TGPIODIR ;
 int timbgpio_update_bit (struct gpio_chip*,unsigned int,int ,int) ;

__attribute__((used)) static int timbgpio_gpio_direction_input(struct gpio_chip *gpio, unsigned nr)
{
 return timbgpio_update_bit(gpio, nr, TGPIODIR, 1);
}
