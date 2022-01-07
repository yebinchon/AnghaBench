
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_led {int lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int PAGE_SIZE ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int lm3533_led_get_pattern_reg (struct lm3533_led*,int ) ;
 scalar_t__ lm3533_read (int ,int ,int *) ;
 scalar_t__ scnprintf (char*,int ,char*,int ) ;
 struct lm3533_led* to_lm3533_led (struct led_classdev*) ;

__attribute__((used)) static ssize_t show_risefalltime(struct device *dev,
     struct device_attribute *attr,
     char *buf, u8 base)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm3533_led *led = to_lm3533_led(led_cdev);
 ssize_t ret;
 u8 reg;
 u8 val;

 reg = lm3533_led_get_pattern_reg(led, base);
 ret = lm3533_read(led->lm3533, reg, &val);
 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%x\n", val);
}
