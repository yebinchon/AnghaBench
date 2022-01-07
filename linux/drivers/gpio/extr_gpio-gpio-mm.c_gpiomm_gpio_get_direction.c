
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiomm_gpio {unsigned int const* io_state; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 struct gpiomm_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int gpiomm_gpio_get_direction(struct gpio_chip *chip,
 unsigned int offset)
{
 struct gpiomm_gpio *const gpiommgpio = gpiochip_get_data(chip);
 const unsigned int port = offset / 8;
 const unsigned int mask = BIT(offset % 8);

 return !!(gpiommgpio->io_state[port] & mask);
}
