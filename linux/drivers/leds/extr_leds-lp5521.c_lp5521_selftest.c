
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp5521_run_selftest (struct lp55xx_chip*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,char*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t lp5521_selftest(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 int ret;

 mutex_lock(&chip->lock);
 ret = lp5521_run_selftest(chip, buf);
 mutex_unlock(&chip->lock);

 return scnprintf(buf, PAGE_SIZE, "%s\n", ret ? "FAIL" : "OK");
}
