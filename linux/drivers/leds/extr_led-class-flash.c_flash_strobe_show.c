
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 struct led_classdev_flash* lcdev_to_flcdev (struct led_classdev*) ;
 int led_get_flash_strobe (struct led_classdev_flash*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t flash_strobe_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct led_classdev_flash *fled_cdev = lcdev_to_flcdev(led_cdev);
 bool state;
 int ret;


 ret = led_get_flash_strobe(fled_cdev, &state);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", state);
}
