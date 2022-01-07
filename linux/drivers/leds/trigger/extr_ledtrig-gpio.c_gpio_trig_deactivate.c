
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_trig_data {int gpio; } ;


 int free_irq (int ,struct led_classdev*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;
 int kfree (struct gpio_trig_data*) ;
 struct gpio_trig_data* led_get_trigger_data (struct led_classdev*) ;

__attribute__((used)) static void gpio_trig_deactivate(struct led_classdev *led)
{
 struct gpio_trig_data *gpio_data = led_get_trigger_data(led);

 if (gpio_is_valid(gpio_data->gpio))
  free_irq(gpio_to_irq(gpio_data->gpio), led);
 kfree(gpio_data);
}
