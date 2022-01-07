
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct lp55xx_led {scalar_t__ brightness; TYPE_1__* chip; } ;
struct lp55xx_device_config {int (* brightness_fn ) (struct lp55xx_led*) ;} ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct lp55xx_device_config* cfg; } ;


 struct lp55xx_led* cdev_to_lp55xx_led (struct led_classdev*) ;
 int stub1 (struct lp55xx_led*) ;

__attribute__((used)) static int lp55xx_set_brightness(struct led_classdev *cdev,
        enum led_brightness brightness)
{
 struct lp55xx_led *led = cdev_to_lp55xx_led(cdev);
 struct lp55xx_device_config *cfg = led->chip->cfg;

 led->brightness = (u8)brightness;
 return cfg->brightness_fn(led);
}
