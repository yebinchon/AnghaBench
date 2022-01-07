
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
 int LM3533_REG_CTRLBANK_BCONF_BASE ;
 scalar_t__ LM3533_REG_CTRLBANK_BCONF_MAPPING_MASK ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 scalar_t__ lm3533_led_get_lv_reg (struct lm3533_led*,int ) ;
 int lm3533_update (int ,scalar_t__,scalar_t__,scalar_t__) ;
 struct lm3533_led* to_lm3533_led (struct led_classdev*) ;

__attribute__((used)) static ssize_t store_linear(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm3533_led *led = to_lm3533_led(led_cdev);
 unsigned long linear;
 u8 reg;
 u8 mask;
 u8 val;
 int ret;

 if (kstrtoul(buf, 0, &linear))
  return -EINVAL;

 reg = lm3533_led_get_lv_reg(led, LM3533_REG_CTRLBANK_BCONF_BASE);
 mask = LM3533_REG_CTRLBANK_BCONF_MAPPING_MASK;

 if (linear)
  val = mask;
 else
  val = 0;

 ret = lm3533_update(led->lm3533, reg, val, mask);
 if (ret)
  return ret;

 return len;
}
