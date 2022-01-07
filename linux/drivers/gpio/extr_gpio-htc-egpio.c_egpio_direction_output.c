
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct egpio_chip {int is_out; } ;


 int EINVAL ;
 int egpio_set (struct gpio_chip*,unsigned int,int) ;
 struct egpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static int egpio_direction_output(struct gpio_chip *chip,
     unsigned offset, int value)
{
 struct egpio_chip *egpio;

 egpio = gpiochip_get_data(chip);
 if (test_bit(offset, &egpio->is_out)) {
  egpio_set(chip, offset, value);
  return 0;
 } else {
  return -EINVAL;
 }
}
