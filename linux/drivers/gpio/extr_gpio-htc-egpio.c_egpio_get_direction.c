
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct egpio_chip {int is_out; } ;


 struct egpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int test_bit (unsigned int,int *) ;

__attribute__((used)) static int egpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct egpio_chip *egpio;

 egpio = gpiochip_get_data(chip);

 return !test_bit(offset, &egpio->is_out);
}
