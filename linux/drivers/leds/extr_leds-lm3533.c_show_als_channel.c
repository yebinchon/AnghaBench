
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_led {int lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM3533_REG_CTRLBANK_BCONF_ALS_CHANNEL_MASK ;
 int LM3533_REG_CTRLBANK_BCONF_BASE ;
 int PAGE_SIZE ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int lm3533_led_get_lv_reg (struct lm3533_led*,int ) ;
 int lm3533_read (int ,int,int*) ;
 int scnprintf (char*,int ,char*,unsigned int) ;
 struct lm3533_led* to_lm3533_led (struct led_classdev*) ;

__attribute__((used)) static ssize_t show_als_channel(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm3533_led *led = to_lm3533_led(led_cdev);
 unsigned channel;
 u8 reg;
 u8 val;
 int ret;

 reg = lm3533_led_get_lv_reg(led, LM3533_REG_CTRLBANK_BCONF_BASE);
 ret = lm3533_read(led->lm3533, reg, &val);
 if (ret)
  return ret;

 channel = (val & LM3533_REG_CTRLBANK_BCONF_ALS_CHANNEL_MASK) + 1;

 return scnprintf(buf, PAGE_SIZE, "%u\n", channel);
}
