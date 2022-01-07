
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gpio_leds_priv {int num_leds; struct gpio_led_data* leds; } ;
struct TYPE_2__ {int flags; } ;
struct gpio_led_data {TYPE_1__ cdev; } ;


 int LED_OFF ;
 int LED_RETAIN_AT_SHUTDOWN ;
 int gpio_led_set (TYPE_1__*,int ) ;
 struct gpio_leds_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void gpio_led_shutdown(struct platform_device *pdev)
{
 struct gpio_leds_priv *priv = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < priv->num_leds; i++) {
  struct gpio_led_data *led = &priv->leds[i];

  if (!(led->cdev.flags & LED_RETAIN_AT_SHUTDOWN))
   gpio_led_set(&led->cdev, LED_OFF);
 }
}
