
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int GPO_BLINK ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int nasgpio_led_set_attr (struct led_classdev*,int ,unsigned long) ;

__attribute__((used)) static ssize_t nas_led_blink_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 int ret;
 struct led_classdev *led = dev_get_drvdata(dev);
 unsigned long blink_state;

 ret = kstrtoul(buf, 10, &blink_state);
 if (ret)
  return ret;

 nasgpio_led_set_attr(led, GPO_BLINK, blink_state);

 return size;
}
