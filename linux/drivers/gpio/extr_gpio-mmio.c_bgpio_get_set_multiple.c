
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned long bgpio_dir; unsigned long (* read_reg ) (int ) ;int reg_dat; int reg_set; } ;


 unsigned long stub1 (int ) ;
 unsigned long stub2 (int ) ;

__attribute__((used)) static int bgpio_get_set_multiple(struct gpio_chip *gc, unsigned long *mask,
      unsigned long *bits)
{
 unsigned long get_mask = 0;
 unsigned long set_mask = 0;


 *bits &= ~*mask;

 set_mask = *mask & gc->bgpio_dir;
 get_mask = *mask & ~gc->bgpio_dir;

 if (set_mask)
  *bits |= gc->read_reg(gc->reg_set) & set_mask;
 if (get_mask)
  *bits |= gc->read_reg(gc->reg_dat) & get_mask;

 return 0;
}
