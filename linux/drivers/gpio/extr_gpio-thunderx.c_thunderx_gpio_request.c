
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int EIO ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ thunderx_gpio_is_gpio (struct thunderx_gpio*,unsigned int) ;

__attribute__((used)) static int thunderx_gpio_request(struct gpio_chip *chip, unsigned int line)
{
 struct thunderx_gpio *txgpio = gpiochip_get_data(chip);

 return thunderx_gpio_is_gpio(txgpio, line) ? 0 : -EIO;
}
