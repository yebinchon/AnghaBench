
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int ** leds; } ;
struct wiimod_ops {size_t arg; } ;


 int kfree (int *) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void wiimod_led_remove(const struct wiimod_ops *ops,
         struct wiimote_data *wdata)
{
 if (!wdata->leds[ops->arg])
  return;

 led_classdev_unregister(wdata->leds[ops->arg]);
 kfree(wdata->leds[ops->arg]);
 wdata->leds[ops->arg] = ((void*)0);
}
