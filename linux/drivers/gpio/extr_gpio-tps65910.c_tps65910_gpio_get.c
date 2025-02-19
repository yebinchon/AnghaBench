
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_gpio {struct tps65910* tps65910; } ;
struct tps65910 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int GPIO_STS_MASK ;
 unsigned int TPS65910_GPIO0 ;
 struct tps65910_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps65910_reg_read (struct tps65910*,unsigned int,unsigned int*) ;

__attribute__((used)) static int tps65910_gpio_get(struct gpio_chip *gc, unsigned offset)
{
 struct tps65910_gpio *tps65910_gpio = gpiochip_get_data(gc);
 struct tps65910 *tps65910 = tps65910_gpio->tps65910;
 unsigned int val;

 tps65910_reg_read(tps65910, TPS65910_GPIO0 + offset, &val);

 if (val & GPIO_STS_MASK)
  return 1;

 return 0;
}
