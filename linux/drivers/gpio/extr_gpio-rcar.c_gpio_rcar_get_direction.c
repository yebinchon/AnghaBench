
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int INOUTSEL ;
 int gpio_rcar_read (struct gpio_rcar_priv*,int ) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int gpio_rcar_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);

 return !(gpio_rcar_read(p, INOUTSEL) & BIT(offset));
}
