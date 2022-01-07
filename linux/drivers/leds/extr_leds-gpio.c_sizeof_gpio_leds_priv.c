
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_leds_priv {int dummy; } ;
struct gpio_led_data {int dummy; } ;



__attribute__((used)) static inline int sizeof_gpio_leds_priv(int num_leds)
{
 return sizeof(struct gpio_leds_priv) +
  (sizeof(struct gpio_led_data) * num_leds);
}
