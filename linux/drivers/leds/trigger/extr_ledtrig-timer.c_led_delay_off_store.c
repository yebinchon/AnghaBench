
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {unsigned long blink_delay_off; int blink_delay_on; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t kstrtoul (char const*,int,unsigned long*) ;
 int led_blink_set (struct led_classdev*,int *,unsigned long*) ;
 struct led_classdev* led_trigger_get_led (struct device*) ;

__attribute__((used)) static ssize_t led_delay_off_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct led_classdev *led_cdev = led_trigger_get_led(dev);
 unsigned long state;
 ssize_t ret = -EINVAL;

 ret = kstrtoul(buf, 10, &state);
 if (ret)
  return ret;

 led_blink_set(led_cdev, &led_cdev->blink_delay_on, &state);
 led_cdev->blink_delay_off = state;

 return size;
}
