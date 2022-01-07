
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc27xx_led {TYPE_1__* priv; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int lock; } ;


 int LED_OFF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sc27xx_led_disable (struct sc27xx_led*) ;
 int sc27xx_led_enable (struct sc27xx_led*,int) ;
 struct sc27xx_led* to_sc27xx_led (struct led_classdev*) ;

__attribute__((used)) static int sc27xx_led_set(struct led_classdev *ldev, enum led_brightness value)
{
 struct sc27xx_led *leds = to_sc27xx_led(ldev);
 int err;

 mutex_lock(&leds->priv->lock);

 if (value == LED_OFF)
  err = sc27xx_led_disable(leds);
 else
  err = sc27xx_led_enable(leds, value);

 mutex_unlock(&leds->priv->lock);

 return err;
}
