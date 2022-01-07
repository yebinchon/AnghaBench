
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_engine {scalar_t__ mode; } ;
struct lp55xx_chip {int engine_idx; int lock; struct lp55xx_engine* engines; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ LP55XX_ENGINE_LOAD ;
 struct lp55xx_led* i2c_get_clientdata (int ) ;
 scalar_t__ lp5523_load_mux (struct lp55xx_chip*,int ,int) ;
 scalar_t__ lp5523_mux_parse (char const*,int *,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_engine_leds(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len, int nr)
{
 struct lp55xx_led *led = i2c_get_clientdata(to_i2c_client(dev));
 struct lp55xx_chip *chip = led->chip;
 struct lp55xx_engine *engine = &chip->engines[nr - 1];
 u16 mux = 0;
 ssize_t ret;

 if (lp5523_mux_parse(buf, &mux, len))
  return -EINVAL;

 mutex_lock(&chip->lock);

 chip->engine_idx = nr;
 ret = -EINVAL;

 if (engine->mode != LP55XX_ENGINE_LOAD)
  goto leave;

 if (lp5523_load_mux(chip, mux, nr))
  goto leave;

 ret = len;
leave:
 mutex_unlock(&chip->lock);
 return ret;
}
