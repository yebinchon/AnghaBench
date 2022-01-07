
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct device {int dummy; } ;


 int gpiochip_remove (struct gpio_chip*) ;

__attribute__((used)) static void devm_gpio_chip_release(struct device *dev, void *res)
{
 struct gpio_chip *chip = *(struct gpio_chip **)res;

 gpiochip_remove(chip);
}
