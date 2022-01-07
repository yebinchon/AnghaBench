
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp3943_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int LP3943_GPIO_OUT_HIGH ;
 int LP3943_GPIO_OUT_LOW ;
 struct lp3943_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int lp3943_gpio_set_mode (struct lp3943_gpio*,unsigned int,int ) ;

__attribute__((used)) static void lp3943_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct lp3943_gpio *lp3943_gpio = gpiochip_get_data(chip);
 u8 data;

 if (value)
  data = LP3943_GPIO_OUT_HIGH;
 else
  data = LP3943_GPIO_OUT_LOW;

 lp3943_gpio_set_mode(lp3943_gpio, offset, data);
}
