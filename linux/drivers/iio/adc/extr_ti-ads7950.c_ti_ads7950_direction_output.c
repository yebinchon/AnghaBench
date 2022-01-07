
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int _ti_ads7950_set_direction (struct gpio_chip*,unsigned int,int ) ;
 int ti_ads7950_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int ti_ads7950_direction_output(struct gpio_chip *chip,
           unsigned int offset, int value)
{
 ti_ads7950_set(chip, offset, value);

 return _ti_ads7950_set_direction(chip, offset, 0);
}
