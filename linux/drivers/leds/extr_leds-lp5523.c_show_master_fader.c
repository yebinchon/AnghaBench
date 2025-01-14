
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ LP5523_REG_MASTER_FADER_BASE ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp55xx_read (struct lp55xx_chip*,scalar_t__,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t show_master_fader(struct device *dev,
     struct device_attribute *attr,
     char *buf, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 int ret;
 u8 val;

 mutex_lock(&chip->lock);
 ret = lp55xx_read(chip, LP5523_REG_MASTER_FADER_BASE + nr - 1, &val);
 mutex_unlock(&chip->lock);

 if (ret == 0)
  ret = sprintf(buf, "%u\n", val);

 return ret;
}
