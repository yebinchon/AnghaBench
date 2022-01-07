
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7301 {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __max7301_set (struct max7301*,unsigned int,int) ;
 struct max7301* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void max7301_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct max7301 *ts = gpiochip_get_data(chip);


 offset += 4;

 mutex_lock(&ts->lock);

 __max7301_set(ts, offset, value);

 mutex_unlock(&ts->lock);
}
