
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int output_state; } ;
typedef enum gpio_pin_output_state { ____Placeholder_gpio_pin_output_state } gpio_pin_output_state ;



enum gpio_pin_output_state dal_gpio_get_output_state(
 const struct gpio *gpio)
{
 return gpio->output_state;
}
