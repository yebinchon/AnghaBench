
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adp5588_gpio {unsigned int* dat_out; int lock; int client; } ;


 unsigned int ADP5588_BANK (unsigned int) ;
 unsigned int ADP5588_BIT (unsigned int) ;
 scalar_t__ GPIO_DAT_OUT1 ;
 int adp5588_gpio_write (int ,scalar_t__,unsigned int) ;
 struct adp5588_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void adp5588_gpio_set_value(struct gpio_chip *chip,
       unsigned off, int val)
{
 unsigned bank, bit;
 struct adp5588_gpio *dev = gpiochip_get_data(chip);

 bank = ADP5588_BANK(off);
 bit = ADP5588_BIT(off);

 mutex_lock(&dev->lock);
 if (val)
  dev->dat_out[bank] |= bit;
 else
  dev->dat_out[bank] &= ~bit;

 adp5588_gpio_write(dev->client, GPIO_DAT_OUT1 + bank,
      dev->dat_out[bank]);
 mutex_unlock(&dev->lock);
}
