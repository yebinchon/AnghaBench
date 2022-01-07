
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4900_gpio_priv {unsigned int input_bit; int regmap; } ;
struct gpio_chip {int dummy; } ;


 struct ts4900_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int ts4900_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct ts4900_gpio_priv *priv = gpiochip_get_data(chip);
 unsigned int reg;

 regmap_read(priv->regmap, offset, &reg);

 return !!(reg & priv->input_bit);
}
