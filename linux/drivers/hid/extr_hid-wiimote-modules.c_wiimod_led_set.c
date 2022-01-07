
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
typedef int __u8 ;
struct TYPE_4__ {struct device* parent; } ;


 int LED_OFF ;
 int WIIPROTO_FLAG_LED (int) ;
 struct wiimote_data* dev_to_wii (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiiproto_req_leds (struct wiimote_data*,int) ;

__attribute__((used)) static void wiimod_led_set(struct led_classdev *led_dev,
      enum led_brightness value)
{
 struct device *dev = led_dev->dev->parent;
 struct wiimote_data *wdata = dev_to_wii(dev);
 int i;
 unsigned long flags;
 __u8 state, flag;

 for (i = 0; i < 4; ++i) {
  if (wdata->leds[i] == led_dev) {
   flag = WIIPROTO_FLAG_LED(i + 1);
   spin_lock_irqsave(&wdata->state.lock, flags);
   state = wdata->state.flags;
   if (value == LED_OFF)
    wiiproto_req_leds(wdata, state & ~flag);
   else
    wiiproto_req_leds(wdata, state | flag);
   spin_unlock_irqrestore(&wdata->state.lock, flags);
   break;
  }
 }
}
