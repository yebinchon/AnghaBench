
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_gpio_data {struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int WM8350_GPIO_CONFIGURATION_I_O ;
 struct wm8350_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int wm8350_set_bits (struct wm8350*,int ,int) ;

__attribute__((used)) static int wm8350_gpio_direction_in(struct gpio_chip *chip, unsigned offset)
{
 struct wm8350_gpio_data *wm8350_gpio = gpiochip_get_data(chip);
 struct wm8350 *wm8350 = wm8350_gpio->wm8350;

 return wm8350_set_bits(wm8350, WM8350_GPIO_CONFIGURATION_I_O,
          1 << offset);
}
