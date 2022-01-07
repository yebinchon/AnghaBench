
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_mockup_chip {int lock; TYPE_1__* lines; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dir; } ;


 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gpio_mockup_get_direction(struct gpio_chip *gc, unsigned int offset)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);
 int direction;

 mutex_lock(&chip->lock);
 direction = !chip->lines[offset].dir;
 mutex_unlock(&chip->lock);

 return direction;
}
