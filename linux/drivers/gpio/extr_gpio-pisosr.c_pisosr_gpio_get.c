
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pisosr_gpio {unsigned int* buffer; } ;
struct gpio_chip {int dummy; } ;


 struct pisosr_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pisosr_gpio_refresh (struct pisosr_gpio*) ;

__attribute__((used)) static int pisosr_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct pisosr_gpio *gpio = gpiochip_get_data(chip);


 pisosr_gpio_refresh(gpio);

 return (gpio->buffer[offset / 8] >> (offset % 8)) & 0x1;
}
