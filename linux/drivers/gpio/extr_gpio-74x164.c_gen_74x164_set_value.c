
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gpio_chip {int dummy; } ;
struct gen_74x164_chip {int registers; int* buffer; int lock; } ;


 int __gen_74x164_write_config (struct gen_74x164_chip*) ;
 struct gen_74x164_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gen_74x164_set_value(struct gpio_chip *gc,
  unsigned offset, int val)
{
 struct gen_74x164_chip *chip = gpiochip_get_data(gc);
 u8 bank = chip->registers - 1 - offset / 8;
 u8 pin = offset % 8;

 mutex_lock(&chip->lock);
 if (val)
  chip->buffer[bank] |= (1 << pin);
 else
  chip->buffer[bank] &= ~(1 << pin);

 __gen_74x164_write_config(chip);
 mutex_unlock(&chip->lock);
}
