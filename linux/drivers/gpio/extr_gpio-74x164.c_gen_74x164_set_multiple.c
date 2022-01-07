
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gpio_chip {int dummy; } ;
struct gen_74x164_chip {int registers; size_t* buffer; int lock; } ;


 unsigned int BITS_PER_BYTE ;
 int __gen_74x164_write_config (struct gen_74x164_chip*) ;
 struct gen_74x164_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
        unsigned long *bits)
{
 struct gen_74x164_chip *chip = gpiochip_get_data(gc);
 unsigned int i, idx, shift;
 u8 bank, bankmask;

 mutex_lock(&chip->lock);
 for (i = 0, bank = chip->registers - 1; i < chip->registers;
      i++, bank--) {
  idx = i / sizeof(*mask);
  shift = i % sizeof(*mask) * BITS_PER_BYTE;
  bankmask = mask[idx] >> shift;
  if (!bankmask)
   continue;

  chip->buffer[bank] &= ~bankmask;
  chip->buffer[bank] |= bankmask & (bits[idx] >> shift);
 }
 __gen_74x164_write_config(chip);
 mutex_unlock(&chip->lock);
}
