
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tqmx86_gpio_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int TQMX86_GPIOD ;
 struct tqmx86_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int tqmx86_gpio_read (struct tqmx86_gpio_data*,int ) ;

__attribute__((used)) static int tqmx86_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct tqmx86_gpio_data *gpio = gpiochip_get_data(chip);

 return !!(tqmx86_gpio_read(gpio, TQMX86_GPIOD) & BIT(offset));
}
