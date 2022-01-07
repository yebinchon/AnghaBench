
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int ngpio; } ;


 int BITS_PER_LONG ;
 size_t BIT_WORD (int) ;
 unsigned long UNIPHIER_GPIO_BANK_MASK ;
 int UNIPHIER_GPIO_LINES_PER_BANK ;
 int UNIPHIER_GPIO_PORT_DATA ;
 int uniphier_gpio_bank_write (struct gpio_chip*,unsigned int,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
           unsigned long *mask, unsigned long *bits)
{
 unsigned int bank, shift, bank_mask, bank_bits;
 int i;

 for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
  bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
  shift = i % BITS_PER_LONG;
  bank_mask = (mask[BIT_WORD(i)] >> shift) &
      UNIPHIER_GPIO_BANK_MASK;
  bank_bits = bits[BIT_WORD(i)] >> shift;

  uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
      bank_mask, bank_bits);
 }
}
