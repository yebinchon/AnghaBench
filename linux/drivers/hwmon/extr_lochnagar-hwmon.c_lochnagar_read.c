
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lochnagar_hwmon {int* power_nsamples; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 long DIV_ROUND_CLOSEST (int,int) ;
 int EOPNOTSUPP ;
 int LN2_CURR ;
 int LN2_CURR_UNITS ;
 int LN2_SAMPLE_US ;
 int LN2_TEMP ;
 int LN2_TEMP_UNITS ;
 int LN2_VOLT ;
 int LN2_VOLT_UNITS ;
 struct lochnagar_hwmon* dev_get_drvdata (struct device*) ;






 int read_power (struct device*,int,long*) ;
 int read_sensor (struct device*,int,int ,int,int ,long*) ;

__attribute__((used)) static int lochnagar_read(struct device *dev, enum hwmon_sensor_types type,
     u32 attr, int chan, long *val)
{
 struct lochnagar_hwmon *priv = dev_get_drvdata(dev);
 int interval;

 switch (type) {
 case 132:
  return read_sensor(dev, chan, LN2_VOLT, 1, LN2_VOLT_UNITS, val);
 case 133:
  return read_sensor(dev, chan, LN2_CURR, 1, LN2_CURR_UNITS, val);
 case 128:
  return read_sensor(dev, chan, LN2_TEMP, 1, LN2_TEMP_UNITS, val);
 case 131:
  switch (attr) {
  case 130:
   return read_power(dev, chan, val);
  case 129:
   interval = priv->power_nsamples[chan] * LN2_SAMPLE_US;
   *val = DIV_ROUND_CLOSEST(interval, 1000);
   return 0;
  default:
   return -EOPNOTSUPP;
  }
 default:
  return -EOPNOTSUPP;
 }
}
