
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_gpio_priv {int gpio_paddrv; } ;
struct gpio_chip {unsigned int ngpio; } ;


 int BUG_ON (int) ;
 struct xlp_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int xlp_gpio_get_reg (int ,unsigned int) ;

__attribute__((used)) static int xlp_gpio_get(struct gpio_chip *gc, unsigned gpio)
{
 struct xlp_gpio_priv *priv = gpiochip_get_data(gc);

 BUG_ON(gpio >= gc->ngpio);
 return xlp_gpio_get_reg(priv->gpio_paddrv, gpio);
}
