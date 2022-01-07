
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ ZX_GPIO_DI ;
 struct zx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static int zx_get_value(struct gpio_chip *gc, unsigned offset)
{
 struct zx_gpio *chip = gpiochip_get_data(gc);

 return !!(readw_relaxed(chip->base + ZX_GPIO_DI) & BIT(offset));
}
