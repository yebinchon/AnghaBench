
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct altr_a10sr_gpio {int regmap; } ;


 int ALTR_A10SR_LED_REG ;
 scalar_t__ ALTR_A10SR_LED_VALID_SHIFT ;
 int BIT (scalar_t__) ;
 struct altr_a10sr_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void altr_a10sr_gpio_set(struct gpio_chip *chip, unsigned int offset,
    int value)
{
 struct altr_a10sr_gpio *gpio = gpiochip_get_data(chip);

 regmap_update_bits(gpio->regmap, ALTR_A10SR_LED_REG,
      BIT(ALTR_A10SR_LED_VALID_SHIFT + offset),
      value ? BIT(ALTR_A10SR_LED_VALID_SHIFT + offset)
      : 0);
}
