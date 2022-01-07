
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_gpio {int ac97; } ;
struct gpio_chip {int dummy; } ;


 struct ucb1400_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ucb1400_gpio_set_value (int ,unsigned int,int) ;

__attribute__((used)) static void ucb1400_gpio_set(struct gpio_chip *gc, unsigned off, int val)
{
 struct ucb1400_gpio *gpio;
 gpio = gpiochip_get_data(gc);
 ucb1400_gpio_set_value(gpio->ac97, off, val);
}
