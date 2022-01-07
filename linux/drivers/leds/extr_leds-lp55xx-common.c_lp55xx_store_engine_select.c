
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {unsigned long engine_idx; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;



 int dev_err (struct device*,char*,int) ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int lp55xx_request_firmware (struct lp55xx_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp55xx_store_engine_select(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 0, &val))
  return -EINVAL;



 switch (val) {
 case 130:
 case 129:
 case 128:
  mutex_lock(&chip->lock);
  chip->engine_idx = val;
  ret = lp55xx_request_firmware(chip);
  mutex_unlock(&chip->lock);
  break;
 default:
  dev_err(dev, "%lu: invalid engine index. (1, 2, 3)\n", val);
  return -EINVAL;
 }

 if (ret) {
  dev_err(dev, "request firmware err: %d\n", ret);
  return ret;
 }

 return len;
}
