
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_led {int cb; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int lm3533_ctrlbank_get_pwm (int *,int *) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct lm3533_led* to_lm3533_led (struct led_classdev*) ;

__attribute__((used)) static ssize_t show_pwm(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm3533_led *led = to_lm3533_led(led_cdev);
 u8 val;
 int ret;

 ret = lm3533_ctrlbank_get_pwm(&led->cb, &val);
 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%u\n", val);
}
