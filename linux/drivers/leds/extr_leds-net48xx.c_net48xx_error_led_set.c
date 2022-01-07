
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int (* gpio_set ) (int ,int) ;} ;


 int NET48XX_ERROR_LED_GPIO ;
 TYPE_1__ scx200_gpio_ops ;
 int stub1 (int ,int) ;

__attribute__((used)) static void net48xx_error_led_set(struct led_classdev *led_cdev,
  enum led_brightness value)
{
 scx200_gpio_ops.gpio_set(NET48XX_ERROR_LED_GPIO, value ? 1 : 0);
}
