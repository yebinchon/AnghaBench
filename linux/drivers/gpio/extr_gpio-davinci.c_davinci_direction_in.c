
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int __davinci_direction (struct gpio_chip*,unsigned int,int,int ) ;

__attribute__((used)) static int davinci_direction_in(struct gpio_chip *chip, unsigned offset)
{
 return __davinci_direction(chip, offset, 0, 0);
}
