
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adp5588_gpio {unsigned int* dir; int* dat_out; int lock; int client; } ;


 unsigned int ADP5588_BANK (unsigned int) ;
 unsigned int ADP5588_BIT (unsigned int) ;
 scalar_t__ GPIO_DAT_STAT1 ;
 int adp5588_gpio_read (int ,scalar_t__) ;
 struct adp5588_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adp5588_gpio_get_value(struct gpio_chip *chip, unsigned off)
{
 struct adp5588_gpio *dev = gpiochip_get_data(chip);
 unsigned bank = ADP5588_BANK(off);
 unsigned bit = ADP5588_BIT(off);
 int val;

 mutex_lock(&dev->lock);

 if (dev->dir[bank] & bit)
  val = dev->dat_out[bank];
 else
  val = adp5588_gpio_read(dev->client, GPIO_DAT_STAT1 + bank);

 mutex_unlock(&dev->lock);

 return !!(val & bit);
}
