
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4900_gpio_priv {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int TS4900_GPIO_OUT ;
 struct ts4900_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static void ts4900_gpio_set(struct gpio_chip *chip, unsigned int offset,
       int value)
{
 struct ts4900_gpio_priv *priv = gpiochip_get_data(chip);

 if (value)
  regmap_update_bits(priv->regmap, offset, TS4900_GPIO_OUT,
       TS4900_GPIO_OUT);
 else
  regmap_update_bits(priv->regmap, offset, TS4900_GPIO_OUT, 0);
}
