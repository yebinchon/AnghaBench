
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int of_node; } ;


 int gpiochip_remove_pin_ranges (struct gpio_chip*) ;
 int of_node_put (int ) ;

void of_gpiochip_remove(struct gpio_chip *chip)
{
 gpiochip_remove_pin_ranges(chip);
 of_node_put(chip->of_node);
}
