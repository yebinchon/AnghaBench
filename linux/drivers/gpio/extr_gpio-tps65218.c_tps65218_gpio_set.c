
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65218_gpio {struct tps65218* tps65218; } ;
struct tps65218 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int TPS65218_ENABLE2_GPIO1 ;
 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_ENABLE2 ;
 struct tps65218_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps65218_clear_bits (struct tps65218*,int ,unsigned int,int ) ;
 int tps65218_set_bits (struct tps65218*,int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void tps65218_gpio_set(struct gpio_chip *gc, unsigned offset,
         int value)
{
 struct tps65218_gpio *tps65218_gpio = gpiochip_get_data(gc);
 struct tps65218 *tps65218 = tps65218_gpio->tps65218;

 if (value)
  tps65218_set_bits(tps65218, TPS65218_REG_ENABLE2,
      TPS65218_ENABLE2_GPIO1 << offset,
      TPS65218_ENABLE2_GPIO1 << offset,
      TPS65218_PROTECT_L1);
 else
  tps65218_clear_bits(tps65218, TPS65218_REG_ENABLE2,
        TPS65218_ENABLE2_GPIO1 << offset,
        TPS65218_PROTECT_L1);
}
