
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_trig_data {int led; scalar_t__ desired_brightness; scalar_t__ inverted; int gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ LED_FULL ;
 scalar_t__ LED_OFF ;
 int gpio_get_value_cansleep (int ) ;
 struct gpio_trig_data* led_get_trigger_data (struct led_classdev*) ;
 int led_set_brightness_nosleep (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t gpio_trig_irq(int irq, void *_led)
{
 struct led_classdev *led = _led;
 struct gpio_trig_data *gpio_data = led_get_trigger_data(led);
 int tmp;

 tmp = gpio_get_value_cansleep(gpio_data->gpio);
 if (gpio_data->inverted)
  tmp = !tmp;

 if (tmp) {
  if (gpio_data->desired_brightness)
   led_set_brightness_nosleep(gpio_data->led,
        gpio_data->desired_brightness);
  else
   led_set_brightness_nosleep(gpio_data->led, LED_FULL);
 } else {
  led_set_brightness_nosleep(gpio_data->led, LED_OFF);
 }

 return IRQ_HANDLED;
}
