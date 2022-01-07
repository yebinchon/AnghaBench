
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_gpio {int ac97; } ;
struct gpio_chip {int dummy; } ;


 struct ucb1400_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ucb1400_gpio_get_value (int ,unsigned int) ;

__attribute__((used)) static int ucb1400_gpio_get(struct gpio_chip *gc, unsigned off)
{
 struct ucb1400_gpio *gpio;

 gpio = gpiochip_get_data(gc);
 return !!ucb1400_gpio_get_value(gpio->ac97, off);
}
