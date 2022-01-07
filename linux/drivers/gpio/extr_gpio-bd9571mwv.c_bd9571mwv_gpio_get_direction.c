
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
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bd9571mwv_gpio_get_direction(struct gpio_chip *chip,
           unsigned int offset)
{
 struct bd9571mwv_gpio *gpio = gpiochip_get_data(chip);
 int ret, val;

 ret = regmap_read(gpio->bd->regmap, BD9571MWV_GPIO_DIR, &val);
 if (ret < 0)
  return ret;

 return val & BIT(offset);
}
