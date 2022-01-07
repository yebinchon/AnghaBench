
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3943_gpio {int input_mask; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LP3943_GPIO_IN ;
 struct lp3943_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int lp3943_gpio_set_mode (struct lp3943_gpio*,unsigned int,int ) ;

__attribute__((used)) static int lp3943_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct lp3943_gpio *lp3943_gpio = gpiochip_get_data(chip);

 lp3943_gpio->input_mask |= BIT(offset);

 return lp3943_gpio_set_mode(lp3943_gpio, offset, LP3943_GPIO_IN);
}
