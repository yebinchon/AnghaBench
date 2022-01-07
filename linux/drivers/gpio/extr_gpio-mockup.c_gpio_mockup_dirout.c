
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_mockup_chip {int lock; TYPE_1__* lines; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dir; } ;


 int GPIO_MOCKUP_DIR_OUT ;
 int __gpio_mockup_set (struct gpio_mockup_chip*,unsigned int,int) ;
 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gpio_mockup_dirout(struct gpio_chip *gc,
         unsigned int offset, int value)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);

 mutex_lock(&chip->lock);
 chip->lines[offset].dir = GPIO_MOCKUP_DIR_OUT;
 __gpio_mockup_set(chip, offset, value);
 mutex_unlock(&chip->lock);

 return 0;
}
