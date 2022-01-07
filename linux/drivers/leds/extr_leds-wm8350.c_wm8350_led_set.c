
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct wm8350_led {int value; int max_uA_index; TYPE_1__ cdev; int isink; int value_lock; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int LED_FULL ;
 int LED_OFF ;
 int dev_err (int ,char*,int ,int) ;
 int * isink_cur ;
 int regulator_set_current_limit (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct wm8350_led* to_wm8350_led (struct led_classdev*) ;
 int wm8350_led_disable (struct wm8350_led*) ;
 int wm8350_led_enable (struct wm8350_led*) ;

__attribute__((used)) static int wm8350_led_set(struct led_classdev *led_cdev,
      enum led_brightness value)
{
 struct wm8350_led *led = to_wm8350_led(led_cdev);
 unsigned long flags;
 int ret;
 int uA;

 led->value = value;

 spin_lock_irqsave(&led->value_lock, flags);

 if (led->value == LED_OFF) {
  spin_unlock_irqrestore(&led->value_lock, flags);
  return wm8350_led_disable(led);
 }






 uA = (led->max_uA_index * led->value) / LED_FULL;
 spin_unlock_irqrestore(&led->value_lock, flags);
 BUG_ON(uA >= ARRAY_SIZE(isink_cur));

 ret = regulator_set_current_limit(led->isink, isink_cur[uA],
       isink_cur[uA]);
 if (ret != 0) {
  dev_err(led->cdev.dev, "Failed to set %duA: %d\n",
   isink_cur[uA], ret);
  return ret;
 }

 return wm8350_led_enable(led);
}
