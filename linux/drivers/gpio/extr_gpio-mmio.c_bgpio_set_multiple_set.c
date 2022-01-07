
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int reg_set; } ;


 int bgpio_set_multiple_single_reg (struct gpio_chip*,unsigned long*,unsigned long*,int ) ;

__attribute__((used)) static void bgpio_set_multiple_set(struct gpio_chip *gc, unsigned long *mask,
       unsigned long *bits)
{
 bgpio_set_multiple_single_reg(gc, mask, bits, gc->reg_set);
}
