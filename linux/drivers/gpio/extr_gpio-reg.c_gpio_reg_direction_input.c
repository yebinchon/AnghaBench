
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_reg {int direction; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int ENOTSUPP ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;

__attribute__((used)) static int gpio_reg_direction_input(struct gpio_chip *gc, unsigned offset)
{
 struct gpio_reg *r = to_gpio_reg(gc);

 return r->direction & BIT(offset) ? 0 : -ENOTSUPP;
}
