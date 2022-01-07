
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dio48e_gpio {unsigned int const* io_state; } ;


 unsigned int BIT (unsigned int) ;
 struct dio48e_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int dio48e_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct dio48e_gpio *const dio48egpio = gpiochip_get_data(chip);
 const unsigned port = offset / 8;
 const unsigned mask = BIT(offset % 8);

 return !!(dio48egpio->io_state[port] & mask);
}
