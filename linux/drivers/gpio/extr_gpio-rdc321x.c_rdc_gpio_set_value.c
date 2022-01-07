
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdc321x_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 struct rdc321x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int rdc_gpio_set_value_impl (struct gpio_chip*,unsigned int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rdc_gpio_set_value(struct gpio_chip *chip,
    unsigned gpio, int value)
{
 struct rdc321x_gpio *gpch;

 gpch = gpiochip_get_data(chip);
 spin_lock(&gpch->lock);
 rdc_gpio_set_value_impl(chip, gpio, value);
 spin_unlock(&gpch->lock);
}
