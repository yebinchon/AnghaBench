
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int lp55xx_run_engine (struct lp55xx_chip*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp55xx_store_engine_run(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 unsigned long val;

 if (kstrtoul(buf, 0, &val))
  return -EINVAL;



 if (val <= 0) {
  lp55xx_run_engine(chip, 0);
  return len;
 }

 mutex_lock(&chip->lock);
 lp55xx_run_engine(chip, 1);
 mutex_unlock(&chip->lock);

 return len;
}
