
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_gpio {struct wm8994* wm8994; } ;
struct wm8994 {int irq_data; } ;
struct gpio_chip {int dummy; } ;


 struct wm8994_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_irq_get_virq (int ,unsigned int) ;

__attribute__((used)) static int wm8994_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct wm8994_gpio *wm8994_gpio = gpiochip_get_data(chip);
 struct wm8994 *wm8994 = wm8994_gpio->wm8994;

 return regmap_irq_get_virq(wm8994->irq_data, offset);
}
