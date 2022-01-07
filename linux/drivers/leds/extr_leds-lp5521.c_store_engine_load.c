
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int engine_idx; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp5521_load_engine (struct lp55xx_chip*) ;
 int lp5521_update_program_memory (struct lp55xx_chip*,char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_engine_load(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 int ret;

 mutex_lock(&chip->lock);

 chip->engine_idx = nr;
 lp5521_load_engine(chip);
 ret = lp5521_update_program_memory(chip, buf, len);

 mutex_unlock(&chip->lock);

 return ret;
}
