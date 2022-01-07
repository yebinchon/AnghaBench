
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb10x_gpio {int domain; } ;
struct gpio_chip {int dummy; } ;


 struct tb10x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int tb10x_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct tb10x_gpio *tb10x_gpio = gpiochip_get_data(chip);

 return irq_create_mapping(tb10x_gpio->domain, offset);
}
