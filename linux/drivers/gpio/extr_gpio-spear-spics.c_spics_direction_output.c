
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int spics_set_value (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int spics_direction_output(struct gpio_chip *chip, unsigned offset,
  int value)
{
 spics_set_value(chip, offset, value);
 return 0;
}
