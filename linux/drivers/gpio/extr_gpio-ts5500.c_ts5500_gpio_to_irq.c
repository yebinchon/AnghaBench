
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_priv {int hwirq; scalar_t__ strap; struct ts5500_dio* pinout; } ;
struct ts5500_dio {int irq; } ;
struct gpio_chip {int dummy; } ;


 int ENXIO ;
 struct ts5500_priv* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int ts5500_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct ts5500_priv *priv = gpiochip_get_data(chip);
 const struct ts5500_dio *block = priv->pinout;
 const struct ts5500_dio line = block[offset];


 if (line.irq)
  return line.irq;


 if (priv->strap)
  return priv->hwirq;

 return -ENXIO;
}
