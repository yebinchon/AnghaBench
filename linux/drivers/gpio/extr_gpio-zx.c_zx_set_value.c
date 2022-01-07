
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ ZX_GPIO_DO0 ;
 scalar_t__ ZX_GPIO_DO1 ;
 struct zx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void zx_set_value(struct gpio_chip *gc, unsigned offset, int value)
{
 struct zx_gpio *chip = gpiochip_get_data(gc);

 if (value)
  writew_relaxed(BIT(offset), chip->base + ZX_GPIO_DO1);
 else
  writew_relaxed(BIT(offset), chip->base + ZX_GPIO_DO0);
}
