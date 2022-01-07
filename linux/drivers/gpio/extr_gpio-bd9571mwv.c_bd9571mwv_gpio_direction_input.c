
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct bd9571mwv_gpio {TYPE_1__* bd; } ;
struct TYPE_2__ {int regmap; } ;


 int BD9571MWV_GPIO_DIR ;
 int BIT (unsigned int) ;
 struct bd9571mwv_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bd9571mwv_gpio_direction_input(struct gpio_chip *chip,
      unsigned int offset)
{
 struct bd9571mwv_gpio *gpio = gpiochip_get_data(chip);

 regmap_update_bits(gpio->bd->regmap, BD9571MWV_GPIO_DIR,
      BIT(offset), 0);

 return 0;
}
