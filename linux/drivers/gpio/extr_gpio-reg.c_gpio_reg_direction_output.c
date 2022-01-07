
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_reg {int direction; } ;
struct gpio_chip {int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int BIT (unsigned int) ;
 int ENOTSUPP ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;

__attribute__((used)) static int gpio_reg_direction_output(struct gpio_chip *gc, unsigned offset,
 int value)
{
 struct gpio_reg *r = to_gpio_reg(gc);

 if (r->direction & BIT(offset))
  return -ENOTSUPP;

 gc->set(gc, offset, value);
 return 0;
}
