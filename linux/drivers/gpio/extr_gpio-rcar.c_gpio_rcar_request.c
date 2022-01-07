
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int dev; } ;
struct gpio_chip {unsigned int base; } ;


 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_request (unsigned int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static int gpio_rcar_request(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);
 int error;

 error = pm_runtime_get_sync(p->dev);
 if (error < 0)
  return error;

 error = pinctrl_gpio_request(chip->base + offset);
 if (error)
  pm_runtime_put(p->dev);

 return error;
}
