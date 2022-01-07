
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x_gpio {int parent; } ;
struct gpio_chip {int dummy; } ;


 int TPS6586X_GPIOSET2 ;
 struct tps6586x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps6586x_update (int ,int ,int,int) ;

__attribute__((used)) static void tps6586x_gpio_set(struct gpio_chip *gc, unsigned offset,
         int value)
{
 struct tps6586x_gpio *tps6586x_gpio = gpiochip_get_data(gc);

 tps6586x_update(tps6586x_gpio->parent, TPS6586X_GPIOSET2,
   value << offset, 1 << offset);
}
