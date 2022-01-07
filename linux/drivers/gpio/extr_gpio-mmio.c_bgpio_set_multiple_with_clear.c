
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int reg_clr; int (* write_reg ) (int ,unsigned long) ;int reg_set; } ;


 int bgpio_multiple_get_masks (struct gpio_chip*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;
 int stub1 (int ,unsigned long) ;
 int stub2 (int ,unsigned long) ;

__attribute__((used)) static void bgpio_set_multiple_with_clear(struct gpio_chip *gc,
       unsigned long *mask,
       unsigned long *bits)
{
 unsigned long set_mask, clear_mask;

 bgpio_multiple_get_masks(gc, mask, bits, &set_mask, &clear_mask);

 if (set_mask)
  gc->write_reg(gc->reg_set, set_mask);
 if (clear_mask)
  gc->write_reg(gc->reg_clr, clear_mask);
}
