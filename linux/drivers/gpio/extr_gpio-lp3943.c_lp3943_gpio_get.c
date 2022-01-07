
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3943_gpio {int input_mask; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 struct lp3943_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int lp3943_get_gpio_in_status (struct lp3943_gpio*,struct gpio_chip*,unsigned int) ;
 int lp3943_get_gpio_out_status (struct lp3943_gpio*,struct gpio_chip*,unsigned int) ;

__attribute__((used)) static int lp3943_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct lp3943_gpio *lp3943_gpio = gpiochip_get_data(chip);
 if (lp3943_gpio->input_mask & BIT(offset))
  return lp3943_get_gpio_in_status(lp3943_gpio, chip, offset);
 else
  return lp3943_get_gpio_out_status(lp3943_gpio, chip, offset);
}
