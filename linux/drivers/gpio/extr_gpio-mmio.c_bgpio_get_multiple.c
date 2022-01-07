
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned long (* read_reg ) (int ) ;int reg_dat; } ;


 unsigned long stub1 (int ) ;

__attribute__((used)) static int bgpio_get_multiple(struct gpio_chip *gc, unsigned long *mask,
         unsigned long *bits)
{

 *bits &= ~*mask;
 *bits |= gc->read_reg(gc->reg_dat) & *mask;
 return 0;
}
