
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int gpio_cmd_settings_bitmask; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 struct ti_ads7950_state* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int ti_ads7950_get_direction(struct gpio_chip *chip,
        unsigned int offset)
{
 struct ti_ads7950_state *st = gpiochip_get_data(chip);


 return !(st->gpio_cmd_settings_bitmask & BIT(offset));
}
