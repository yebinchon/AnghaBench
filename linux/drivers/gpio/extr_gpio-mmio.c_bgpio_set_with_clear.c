
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int reg_clr; int (* write_reg ) (int ,unsigned long) ;int reg_set; } ;


 unsigned long bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 int stub1 (int ,unsigned long) ;
 int stub2 (int ,unsigned long) ;

__attribute__((used)) static void bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
     int val)
{
 unsigned long mask = bgpio_line2mask(gc, gpio);

 if (val)
  gc->write_reg(gc->reg_set, mask);
 else
  gc->write_reg(gc->reg_clr, mask);
}
