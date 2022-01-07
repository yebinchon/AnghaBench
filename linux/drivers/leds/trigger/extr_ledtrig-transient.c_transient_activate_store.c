
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_trig_data {int activate; scalar_t__ restore_state; scalar_t__ duration; scalar_t__ state; int timer; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ LED_FULL ;
 scalar_t__ LED_OFF ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int led_set_brightness_nosleep (struct led_classdev*,scalar_t__) ;
 struct transient_trig_data* led_trigger_get_drvdata (struct device*) ;
 struct led_classdev* led_trigger_get_led (struct device*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static ssize_t transient_activate_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = led_trigger_get_led(dev);
 struct transient_trig_data *transient_data =
  led_trigger_get_drvdata(dev);
 unsigned long state;
 ssize_t ret;

 ret = kstrtoul(buf, 10, &state);
 if (ret)
  return ret;

 if (state != 1 && state != 0)
  return -EINVAL;


 if (state == 0 && transient_data->activate == 1) {
  del_timer(&transient_data->timer);
  transient_data->activate = state;
  led_set_brightness_nosleep(led_cdev,
     transient_data->restore_state);
  return size;
 }


 if (state == 1 && transient_data->activate == 0 &&
     transient_data->duration != 0) {
  transient_data->activate = state;
  led_set_brightness_nosleep(led_cdev, transient_data->state);
  transient_data->restore_state =
      (transient_data->state == LED_FULL) ? LED_OFF : LED_FULL;
  mod_timer(&transient_data->timer,
     jiffies + msecs_to_jiffies(transient_data->duration));
 }






 return size;
}
