
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* name; char* default_trigger; int brightness_set; int brightness_set_blocking; int brightness_get; int flags; int max_brightness; } ;
struct TYPE_5__ {char* name; } ;
struct wacom_led {unsigned int group; unsigned int id; TYPE_3__ cdev; int hlv; int llv; struct wacom* wacom; TYPE_2__ trigger; } ;
struct TYPE_4__ {int hlv; int llv; } ;
struct wacom {int hdev; TYPE_1__ led; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LED_FULL ;
 int LED_HW_PLUGGABLE ;
 int __wacom_led_brightness_get ;
 int dev_name (struct device*) ;
 char* devm_kasprintf (struct device*,int ,char*,int ,unsigned int,unsigned int) ;
 int devm_led_classdev_register (struct device*,TYPE_3__*) ;
 int devm_led_trigger_register (struct device*,TYPE_2__*) ;
 int hid_err (int ,char*,char*,int) ;
 int wacom_led_brightness_set ;
 int wacom_led_readonly_brightness_set ;

__attribute__((used)) static int wacom_led_register_one(struct device *dev, struct wacom *wacom,
      struct wacom_led *led, unsigned int group,
      unsigned int id, bool read_only)
{
 int error;
 char *name;

 name = devm_kasprintf(dev, GFP_KERNEL,
         "%s::wacom-%d.%d",
         dev_name(dev),
         group,
         id);
 if (!name)
  return -ENOMEM;

 if (!read_only) {
  led->trigger.name = name;
  error = devm_led_trigger_register(dev, &led->trigger);
  if (error) {
   hid_err(wacom->hdev,
    "failed to register LED trigger %s: %d\n",
    led->cdev.name, error);
   return error;
  }
 }

 led->group = group;
 led->id = id;
 led->wacom = wacom;
 led->llv = wacom->led.llv;
 led->hlv = wacom->led.hlv;
 led->cdev.name = name;
 led->cdev.max_brightness = LED_FULL;
 led->cdev.flags = LED_HW_PLUGGABLE;
 led->cdev.brightness_get = __wacom_led_brightness_get;
 if (!read_only) {
  led->cdev.brightness_set_blocking = wacom_led_brightness_set;
  led->cdev.default_trigger = led->cdev.name;
 } else {
  led->cdev.brightness_set = wacom_led_readonly_brightness_set;
 }

 error = devm_led_classdev_register(dev, &led->cdev);
 if (error) {
  hid_err(wacom->hdev,
   "failed to register LED %s: %d\n",
   led->cdev.name, error);
  led->cdev.name = ((void*)0);
  return error;
 }

 return 0;
}
