
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int idio_16_gpio_direction_output(struct gpio_chip *chip,
 unsigned int offset, int value)
{
 chip->set(chip, offset, value);
 return 0;
}
