
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_mockup_chip {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __gpio_mockup_set (struct gpio_mockup_chip*,unsigned int,int) ;
 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gpio_mockup_set(struct gpio_chip *gc,
      unsigned int offset, int value)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);

 mutex_lock(&chip->lock);
 __gpio_mockup_set(chip, offset, value);
 mutex_unlock(&chip->lock);
}
