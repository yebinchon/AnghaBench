
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int blink_delay_on; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* led_trigger_get_led (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t led_delay_on_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = led_trigger_get_led(dev);

 return sprintf(buf, "%lu\n", led_cdev->blink_delay_on);
}
