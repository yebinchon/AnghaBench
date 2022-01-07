
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int tpic2810_set_mask_bits (struct gpio_chip*,int ,int ) ;

__attribute__((used)) static void tpic2810_set(struct gpio_chip *chip, unsigned offset, int value)
{
 tpic2810_set_mask_bits(chip, BIT(offset), value ? BIT(offset) : 0);
}
