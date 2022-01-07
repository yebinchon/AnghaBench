
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct exar_gpio_chip {int lock; scalar_t__ regs; } ;


 struct exar_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int exar_get(struct gpio_chip *chip, unsigned int reg)
{
 struct exar_gpio_chip *exar_gpio = gpiochip_get_data(chip);
 int value;

 mutex_lock(&exar_gpio->lock);
 value = readb(exar_gpio->regs + reg);
 mutex_unlock(&exar_gpio->lock);

 return value;
}
