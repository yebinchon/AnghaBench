
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm3533_led {int lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ LM3533_RISEFALLTIME_MAX ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtou8 (char const*,int ,scalar_t__*) ;
 scalar_t__ lm3533_led_get_pattern_reg (struct lm3533_led*,scalar_t__) ;
 int lm3533_write (int ,scalar_t__,scalar_t__) ;
 struct lm3533_led* to_lm3533_led (struct led_classdev*) ;

__attribute__((used)) static ssize_t store_risefalltime(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len, u8 base)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm3533_led *led = to_lm3533_led(led_cdev);
 u8 val;
 u8 reg;
 int ret;

 if (kstrtou8(buf, 0, &val) || val > LM3533_RISEFALLTIME_MAX)
  return -EINVAL;

 reg = lm3533_led_get_pattern_reg(led, base);
 ret = lm3533_write(led->lm3533, reg, val);
 if (ret)
  return ret;

 return len;
}
