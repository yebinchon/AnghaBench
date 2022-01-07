
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4900_gpio_priv {int regmap; } ;
struct gpio_chip {int dummy; } ;


 int TS4900_GPIO_OE ;
 int TS4900_GPIO_OUT ;
 struct ts4900_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static int ts4900_gpio_direction_output(struct gpio_chip *chip,
     unsigned int offset, int value)
{
 struct ts4900_gpio_priv *priv = gpiochip_get_data(chip);
 int ret;

 if (value)
  ret = regmap_write(priv->regmap, offset, TS4900_GPIO_OE |
        TS4900_GPIO_OUT);
 else
  ret = regmap_write(priv->regmap, offset, TS4900_GPIO_OE);

 return ret;
}
