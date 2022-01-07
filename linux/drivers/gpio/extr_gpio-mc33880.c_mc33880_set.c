
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc33880 {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __mc33880_set (struct mc33880*,unsigned int,int) ;
 struct mc33880* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mc33880_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct mc33880 *mc = gpiochip_get_data(chip);

 mutex_lock(&mc->lock);

 __mc33880_set(mc, offset, value);

 mutex_unlock(&mc->lock);
}
