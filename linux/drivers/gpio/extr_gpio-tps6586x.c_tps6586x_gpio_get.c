
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tps6586x_gpio {int parent; } ;
struct gpio_chip {int dummy; } ;


 int TPS6586X_GPIOSET2 ;
 struct tps6586x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps6586x_read (int ,int ,int*) ;

__attribute__((used)) static int tps6586x_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct tps6586x_gpio *tps6586x_gpio = gpiochip_get_data(gc);
 uint8_t val;
 int ret;

 ret = tps6586x_read(tps6586x_gpio->parent, TPS6586X_GPIOSET2, &val);
 if (ret)
  return ret;

 return !!(val & (1 << offset));
}
