
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max6621_data {int regmap; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int MAX6621_CONFIG2_REG ;
 int MAX6621_TEMP_ALERT_CHAN_SHIFT ;
 int MAX6621_TEMP_INPUT_MAX ;
 int MAX6621_TEMP_INPUT_MIN ;
 long clamp_val (long,int ,int ) ;
 struct max6621_data* dev_get_drvdata (struct device*) ;



 int * max6621_temp_alert_chan2reg ;
 long max6621_temp_mc2reg (long) ;
 int regmap_write (int ,int ,long) ;

__attribute__((used)) static int
max6621_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
       int channel, long val)
{
 struct max6621_data *data = dev_get_drvdata(dev);
 u32 reg;

 switch (type) {
 case 130:
  switch (attr) {
  case 128:

   val = clamp_val(val, MAX6621_TEMP_INPUT_MIN,
     MAX6621_TEMP_INPUT_MAX);
   val = max6621_temp_mc2reg(val);

   return regmap_write(data->regmap,
         MAX6621_CONFIG2_REG, val);
  case 129:
   channel -= MAX6621_TEMP_ALERT_CHAN_SHIFT;
   reg = max6621_temp_alert_chan2reg[channel];

   val = clamp_val(val, MAX6621_TEMP_INPUT_MIN,
     MAX6621_TEMP_INPUT_MAX);
   val = val / 1000L;

   return regmap_write(data->regmap, reg, val);
  default:
   return -EOPNOTSUPP;
  }
  break;

 default:
  return -EOPNOTSUPP;
 }

 return -EOPNOTSUPP;
}
