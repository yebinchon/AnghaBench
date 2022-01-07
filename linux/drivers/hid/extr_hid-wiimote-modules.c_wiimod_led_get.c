
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int lock; } ;
struct wiimote_data {TYPE_1__ state; struct led_classdev** leds; } ;
struct led_classdev {TYPE_2__* dev; } ;
struct device {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {struct device* parent; } ;


 int LED_FULL ;
 int LED_OFF ;
 int WIIPROTO_FLAG_LED (int) ;
 struct wiimote_data* dev_to_wii (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static enum led_brightness wiimod_led_get(struct led_classdev *led_dev)
{
 struct device *dev = led_dev->dev->parent;
 struct wiimote_data *wdata = dev_to_wii(dev);
 int i;
 unsigned long flags;
 bool value = 0;

 for (i = 0; i < 4; ++i) {
  if (wdata->leds[i] == led_dev) {
   spin_lock_irqsave(&wdata->state.lock, flags);
   value = wdata->state.flags & WIIPROTO_FLAG_LED(i + 1);
   spin_unlock_irqrestore(&wdata->state.lock, flags);
   break;
  }
 }

 return value ? LED_FULL : LED_OFF;
}
