
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_bits; scalar_t__ be_bits; } ;


 unsigned long BIT (unsigned int) ;

__attribute__((used)) static unsigned long bgpio_line2mask(struct gpio_chip *gc, unsigned int line)
{
 if (gc->be_bits)
  return BIT(gc->bgpio_bits - 1 - line);
 return BIT(line);
}
