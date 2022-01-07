
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {int irq_domain; } ;
struct gpio_chip {int dummy; } ;


 unsigned int WM831X_IRQ_GPIO_1 ;
 struct wm831x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (int ,unsigned int) ;

__attribute__((used)) static int wm831x_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct wm831x_gpio *wm831x_gpio = gpiochip_get_data(chip);
 struct wm831x *wm831x = wm831x_gpio->wm831x;

 return irq_create_mapping(wm831x->irq_domain,
      WM831X_IRQ_GPIO_1 + offset);
}
