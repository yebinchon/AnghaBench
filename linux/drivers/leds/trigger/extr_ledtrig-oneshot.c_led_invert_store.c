
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oneshot_trig_data {int invert; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LED_FULL ;
 int LED_OFF ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int led_set_brightness_nosleep (struct led_classdev*,int ) ;
 struct oneshot_trig_data* led_trigger_get_drvdata (struct device*) ;
 struct led_classdev* led_trigger_get_led (struct device*) ;

__attribute__((used)) static ssize_t led_invert_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = led_trigger_get_led(dev);
 struct oneshot_trig_data *oneshot_data = led_trigger_get_drvdata(dev);
 unsigned long state;
 int ret;

 ret = kstrtoul(buf, 0, &state);
 if (ret)
  return ret;

 oneshot_data->invert = !!state;

 if (oneshot_data->invert)
  led_set_brightness_nosleep(led_cdev, LED_FULL);
 else
  led_set_brightness_nosleep(led_cdev, LED_OFF);

 return size;
}
