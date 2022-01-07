
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_mockup_chip {int lock; } ;
struct gpio_chip {int dummy; } ;


 int __gpio_mockup_get (struct gpio_mockup_chip*,unsigned int) ;
 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gpio_mockup_get(struct gpio_chip *gc, unsigned int offset)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);
 int val;

 mutex_lock(&chip->lock);
 val = __gpio_mockup_get(chip, offset);
 mutex_unlock(&chip->lock);

 return val;
}
