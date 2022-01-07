
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_twl4030_priv {int irq_base; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int TWL4030_GPIO_MAX ;
 struct gpio_twl4030_priv* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int twl_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_twl4030_priv *priv = gpiochip_get_data(chip);

 return (priv->irq_base && (offset < TWL4030_GPIO_MAX))
  ? (priv->irq_base + offset)
  : -EINVAL;
}
