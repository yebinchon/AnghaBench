
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_predef_pattern {int dummy; } ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; TYPE_1__* pdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_patterns; struct lp55xx_predef_pattern* patterns; } ;


 int EINVAL ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int lp5562_run_predef_led_pattern (struct lp55xx_chip*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp5562_store_pattern(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 struct lp55xx_predef_pattern *ptn = chip->pdata->patterns;
 int num_patterns = chip->pdata->num_patterns;
 unsigned long mode;
 int ret;

 ret = kstrtoul(buf, 0, &mode);
 if (ret)
  return ret;

 if (mode > num_patterns || !ptn)
  return -EINVAL;

 mutex_lock(&chip->lock);
 ret = lp5562_run_predef_led_pattern(chip, mode);
 mutex_unlock(&chip->lock);

 if (ret)
  return ret;

 return len;
}
