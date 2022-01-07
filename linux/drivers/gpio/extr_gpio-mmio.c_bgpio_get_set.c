
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned long bgpio_dir; unsigned long (* read_reg ) (int ) ;int reg_dat; int reg_set; } ;


 unsigned long bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 unsigned long stub1 (int ) ;
 unsigned long stub2 (int ) ;

__attribute__((used)) static int bgpio_get_set(struct gpio_chip *gc, unsigned int gpio)
{
 unsigned long pinmask = bgpio_line2mask(gc, gpio);
 bool dir = !!(gc->bgpio_dir & pinmask);

 if (dir)
  return !!(gc->read_reg(gc->reg_set) & pinmask);
 else
  return !!(gc->read_reg(gc->reg_dat) & pinmask);
}
