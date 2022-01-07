
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct lochnagar_hwmon {int sensor_lock; struct regmap* regmap; } ;
struct device {int dummy; } ;
typedef enum lochnagar_measure_mode { ____Placeholder_lochnagar_measure_mode } lochnagar_measure_mode ;


 int dev_err (struct device*,char*,int) ;
 struct lochnagar_hwmon* dev_get_drvdata (struct device*) ;
 int do_measurement (struct regmap*,int,int,int) ;
 long float_to_long (int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_data (struct regmap*,int,int *) ;

__attribute__((used)) static int read_sensor(struct device *dev, int chan,
         enum lochnagar_measure_mode mode, int nsamples,
         unsigned int precision, long *val)
{
 struct lochnagar_hwmon *priv = dev_get_drvdata(dev);
 struct regmap *regmap = priv->regmap;
 u32 data;
 int ret;

 mutex_lock(&priv->sensor_lock);

 ret = do_measurement(regmap, chan, mode, nsamples);
 if (ret < 0) {
  dev_err(dev, "Failed to perform measurement: %d\n", ret);
  goto error;
 }

 ret = request_data(regmap, chan, &data);
 if (ret < 0) {
  dev_err(dev, "Failed to read measurement: %d\n", ret);
  goto error;
 }

 *val = float_to_long(data, precision);

error:
 mutex_unlock(&priv->sensor_lock);

 return ret;
}
