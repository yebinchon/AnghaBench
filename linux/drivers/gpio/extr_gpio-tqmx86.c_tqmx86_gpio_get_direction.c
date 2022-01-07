
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int TQMX86_DIR_INPUT_MASK ;

__attribute__((used)) static int tqmx86_gpio_get_direction(struct gpio_chip *chip,
         unsigned int offset)
{
 return !!(TQMX86_DIR_INPUT_MASK & BIT(offset));
}
