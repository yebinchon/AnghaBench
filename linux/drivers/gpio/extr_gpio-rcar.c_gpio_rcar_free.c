
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int dev; } ;
struct gpio_chip {unsigned int base; } ;


 int gpio_rcar_config_general_input_output_mode (struct gpio_chip*,unsigned int,int) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_free (unsigned int) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void gpio_rcar_free(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);

 pinctrl_gpio_free(chip->base + offset);





 gpio_rcar_config_general_input_output_mode(chip, offset, 0);

 pm_runtime_put(p->dev);
}
