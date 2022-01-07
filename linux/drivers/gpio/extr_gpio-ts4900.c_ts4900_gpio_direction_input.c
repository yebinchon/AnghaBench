
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4900_gpio_priv {int regmap; } ;
struct gpio_chip {int dummy; } ;


 struct ts4900_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,unsigned int,int ) ;

__attribute__((used)) static int ts4900_gpio_direction_input(struct gpio_chip *chip,
           unsigned int offset)
{
 struct ts4900_gpio_priv *priv = gpiochip_get_data(chip);





 return regmap_write(priv->regmap, offset, 0);
}
