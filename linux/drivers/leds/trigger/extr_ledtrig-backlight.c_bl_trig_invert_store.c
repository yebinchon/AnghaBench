
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bl_trig_notifier {unsigned long invert; scalar_t__ old_status; int brightness; } ;
typedef int ssize_t ;


 scalar_t__ BLANK ;
 int EINVAL ;
 int LED_OFF ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int led_set_brightness_nosleep (struct led_classdev*,int ) ;
 struct bl_trig_notifier* led_trigger_get_drvdata (struct device*) ;
 struct led_classdev* led_trigger_get_led (struct device*) ;

__attribute__((used)) static ssize_t bl_trig_invert_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t num)
{
 struct led_classdev *led = led_trigger_get_led(dev);
 struct bl_trig_notifier *n = led_trigger_get_drvdata(dev);
 unsigned long invert;
 int ret;

 ret = kstrtoul(buf, 10, &invert);
 if (ret < 0)
  return ret;

 if (invert > 1)
  return -EINVAL;

 n->invert = invert;


 if ((n->old_status == BLANK) ^ n->invert)
  led_set_brightness_nosleep(led, LED_OFF);
 else
  led_set_brightness_nosleep(led, n->brightness);

 return num;
}
