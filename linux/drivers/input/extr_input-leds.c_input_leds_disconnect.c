
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_leds {int num_leds; struct input_led* leds; } ;
struct TYPE_2__ {struct input_leds* name; } ;
struct input_led {TYPE_1__ cdev; } ;
struct input_handle {struct input_leds* private; } ;


 int input_close_device (struct input_handle*) ;
 int input_unregister_handle (struct input_handle*) ;
 int kfree (struct input_leds*) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void input_leds_disconnect(struct input_handle *handle)
{
 struct input_leds *leds = handle->private;
 int i;

 for (i = 0; i < leds->num_leds; i++) {
  struct input_led *led = &leds->leds[i];

  led_classdev_unregister(&led->cdev);
  kfree(led->cdev.name);
 }

 input_close_device(handle);
 input_unregister_handle(handle);

 kfree(leds);
}
