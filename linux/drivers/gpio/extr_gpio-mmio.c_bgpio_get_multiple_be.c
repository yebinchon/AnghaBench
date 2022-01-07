
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int ngpio; unsigned long (* read_reg ) (int ) ;int reg_dat; } ;


 unsigned long bgpio_line2mask (struct gpio_chip*,int) ;
 int find_next_bit (unsigned long*,int,int) ;
 unsigned long stub1 (int ) ;

__attribute__((used)) static int bgpio_get_multiple_be(struct gpio_chip *gc, unsigned long *mask,
     unsigned long *bits)
{
 unsigned long readmask = 0;
 unsigned long val;
 int bit;


 *bits &= ~*mask;


 bit = -1;
 while ((bit = find_next_bit(mask, gc->ngpio, bit + 1)) < gc->ngpio)
  readmask |= bgpio_line2mask(gc, bit);


 val = gc->read_reg(gc->reg_dat) & readmask;





 bit = -1;
 while ((bit = find_next_bit(&val, gc->ngpio, bit + 1)) < gc->ngpio)
  *bits |= bgpio_line2mask(gc, bit);

 return 0;
}
