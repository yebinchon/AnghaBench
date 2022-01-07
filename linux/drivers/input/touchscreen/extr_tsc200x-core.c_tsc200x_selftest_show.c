
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int mutex; int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int MAX_12BIT ;
 int TSC200X_REG_TEMP_HIGH ;
 int __tsc200x_disable (struct tsc200x*) ;
 int __tsc200x_enable (struct tsc200x*) ;
 struct tsc200x* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,unsigned int,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int sprintf (char*,char*,int) ;
 int tsc200x_reset (struct tsc200x*) ;

__attribute__((used)) static ssize_t tsc200x_selftest_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct tsc200x *ts = dev_get_drvdata(dev);
 unsigned int temp_high;
 unsigned int temp_high_orig;
 unsigned int temp_high_test;
 bool success = 1;
 int error;

 mutex_lock(&ts->mutex);




 __tsc200x_disable(ts);

 error = regmap_read(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high_orig);
 if (error) {
  dev_warn(dev, "selftest failed: read error %d\n", error);
  success = 0;
  goto out;
 }

 temp_high_test = (temp_high_orig - 1) & MAX_12BIT;

 error = regmap_write(ts->regmap, TSC200X_REG_TEMP_HIGH, temp_high_test);
 if (error) {
  dev_warn(dev, "selftest failed: write error %d\n", error);
  success = 0;
  goto out;
 }

 error = regmap_read(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high);
 if (error) {
  dev_warn(dev, "selftest failed: read error %d after write\n",
    error);
  success = 0;
  goto out;
 }

 if (temp_high != temp_high_test) {
  dev_warn(dev, "selftest failed: %d != %d\n",
    temp_high, temp_high_test);
  success = 0;
 }


 tsc200x_reset(ts);

 if (!success)
  goto out;


 error = regmap_read(ts->regmap, TSC200X_REG_TEMP_HIGH, &temp_high);
 if (error) {
  dev_warn(dev, "selftest failed: read error %d after reset\n",
    error);
  success = 0;
  goto out;
 }

 if (temp_high != temp_high_orig) {
  dev_warn(dev, "selftest failed after reset: %d != %d\n",
    temp_high, temp_high_orig);
  success = 0;
 }

out:
 __tsc200x_enable(ts);
 mutex_unlock(&ts->mutex);

 return sprintf(buf, "%d\n", success);
}
