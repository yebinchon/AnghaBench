
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_engine {int mode; } ;
struct lp55xx_chip {int engine_idx; int lock; struct lp55xx_engine* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LP55XX_ENGINE_DISABLED ;
 int LP55XX_ENGINE_LOAD ;
 int LP55XX_ENGINE_RUN ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 int lp5521_load_engine (struct lp55xx_chip*) ;
 int lp5521_run_engine (struct lp55xx_chip*,int) ;
 int lp5521_stop_engine (struct lp55xx_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncmp (char const*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_engine_mode(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 struct lp55xx_engine *engine = &chip->engines[nr - 1];

 mutex_lock(&chip->lock);

 chip->engine_idx = nr;

 if (!strncmp(buf, "run", 3)) {
  lp5521_run_engine(chip, 1);
  engine->mode = LP55XX_ENGINE_RUN;
 } else if (!strncmp(buf, "load", 4)) {
  lp5521_stop_engine(chip);
  lp5521_load_engine(chip);
  engine->mode = LP55XX_ENGINE_LOAD;
 } else if (!strncmp(buf, "disabled", 8)) {
  lp5521_stop_engine(chip);
  engine->mode = LP55XX_ENGINE_DISABLED;
 }

 mutex_unlock(&chip->lock);

 return len;
}
