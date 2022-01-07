
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* read_reg ) (int ) ;int reg_dat; } ;


 int bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 int stub1 (int ) ;

__attribute__((used)) static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
{
 return !!(gc->read_reg(gc->reg_dat) & bgpio_line2mask(gc, gpio));
}
