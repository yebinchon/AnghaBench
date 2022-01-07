
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __set_gpo_level_p3 (struct lpc32xx_gpio_chip*,unsigned int,int) ;
 struct lpc32xx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int lpc32xx_gpio_dir_out_always(struct gpio_chip *chip, unsigned pin,
 int value)
{
 struct lpc32xx_gpio_chip *group = gpiochip_get_data(chip);

 __set_gpo_level_p3(group, pin, value);
 return 0;
}
