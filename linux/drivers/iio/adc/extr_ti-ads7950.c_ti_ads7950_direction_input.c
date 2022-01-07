
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int _ti_ads7950_set_direction (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int ti_ads7950_direction_input(struct gpio_chip *chip,
          unsigned int offset)
{
 return _ti_ads7950_set_direction(chip, offset, 1);
}
