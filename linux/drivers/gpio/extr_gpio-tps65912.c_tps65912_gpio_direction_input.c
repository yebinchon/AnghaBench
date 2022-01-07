
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65912_gpio {TYPE_1__* tps; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int GPIO_CFG_MASK ;
 unsigned int TPS65912_GPIO1 ;
 struct tps65912_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int tps65912_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
{
 struct tps65912_gpio *gpio = gpiochip_get_data(gc);

 return regmap_update_bits(gpio->tps->regmap, TPS65912_GPIO1 + offset,
      GPIO_CFG_MASK, 0);
}
