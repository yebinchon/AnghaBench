
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_gpio {struct tps65910* tps65910; } ;
struct tps65910 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_SET_MASK ;
 unsigned int TPS65910_GPIO0 ;
 struct tps65910_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps65910_reg_clear_bits (struct tps65910*,unsigned int,int ) ;
 int tps65910_reg_set_bits (struct tps65910*,unsigned int,int ) ;

__attribute__((used)) static void tps65910_gpio_set(struct gpio_chip *gc, unsigned offset,
         int value)
{
 struct tps65910_gpio *tps65910_gpio = gpiochip_get_data(gc);
 struct tps65910 *tps65910 = tps65910_gpio->tps65910;

 if (value)
  tps65910_reg_set_bits(tps65910, TPS65910_GPIO0 + offset,
      GPIO_SET_MASK);
 else
  tps65910_reg_clear_bits(tps65910, TPS65910_GPIO0 + offset,
      GPIO_SET_MASK);
}
