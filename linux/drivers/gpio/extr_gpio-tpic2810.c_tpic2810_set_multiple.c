
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int tpic2810_set_mask_bits (struct gpio_chip*,unsigned long,unsigned long) ;

__attribute__((used)) static void tpic2810_set_multiple(struct gpio_chip *chip, unsigned long *mask,
      unsigned long *bits)
{
 tpic2810_set_mask_bits(chip, *mask, *bits);
}
