
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int exar_set_direction (struct gpio_chip*,int ,unsigned int) ;
 int exar_set_value (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int exar_direction_output(struct gpio_chip *chip, unsigned int offset,
     int value)
{
 exar_set_value(chip, offset, value);
 return exar_set_direction(chip, 0, offset);
}
