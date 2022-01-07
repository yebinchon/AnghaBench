
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct egpio_chip {int is_out; } ;


 int EINVAL ;
 struct egpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static int egpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct egpio_chip *egpio;

 egpio = gpiochip_get_data(chip);
 return test_bit(offset, &egpio->is_out) ? -EINVAL : 0;
}
