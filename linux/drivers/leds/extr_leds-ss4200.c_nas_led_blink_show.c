
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
 scalar_t__ nasgpio_led_get_attr (struct led_classdev*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t nas_led_blink_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct led_classdev *led = dev_get_drvdata(dev);
 int blinking = 0;
 if (nasgpio_led_get_attr(led, GPO_BLINK))
  blinking = 1;
 return sprintf(buf, "%u\n", blinking);
}
