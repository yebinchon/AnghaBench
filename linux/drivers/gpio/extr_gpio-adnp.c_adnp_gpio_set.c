
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct adnp {int i2c_lock; } ;


 int __adnp_gpio_set (struct adnp*,unsigned int,int) ;
 struct adnp* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void adnp_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct adnp *adnp = gpiochip_get_data(chip);

 mutex_lock(&adnp->i2c_lock);
 __adnp_gpio_set(adnp, offset, value);
 mutex_unlock(&adnp->i2c_lock);
}
