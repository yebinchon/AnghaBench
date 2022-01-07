
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws16c48_gpio {unsigned int const* io_state; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 struct ws16c48_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int ws16c48_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
 const unsigned port = offset / 8;
 const unsigned mask = BIT(offset % 8);

 return !!(ws16c48gpio->io_state[port] & mask);
}
