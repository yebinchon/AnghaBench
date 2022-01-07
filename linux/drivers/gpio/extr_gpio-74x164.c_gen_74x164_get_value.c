
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct gpio_chip {int dummy; } ;
struct gen_74x164_chip {int registers; size_t* buffer; int lock; } ;


 struct gen_74x164_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gen_74x164_get_value(struct gpio_chip *gc, unsigned offset)
{
 struct gen_74x164_chip *chip = gpiochip_get_data(gc);
 u8 bank = chip->registers - 1 - offset / 8;
 u8 pin = offset % 8;
 int ret;

 mutex_lock(&chip->lock);
 ret = (chip->buffer[bank] >> pin) & 0x1;
 mutex_unlock(&chip->lock);

 return ret;
}
