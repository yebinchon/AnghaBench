
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm75_data {long sample_time; int resolution; int regmap; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;
 int LM75_REG_HYST ;
 int LM75_REG_MAX ;
 int LM75_REG_TEMP ;
 struct lm75_data* dev_get_drvdata (struct device*) ;






 long lm75_reg_to_mc (unsigned int,int ) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int lm75_read(struct device *dev, enum hwmon_sensor_types type,
       u32 attr, int channel, long *val)
{
 struct lm75_data *data = dev_get_drvdata(dev);
 unsigned int regval;
 int err, reg;

 switch (type) {
 case 133:
  switch (attr) {
  case 132:
   *val = data->sample_time;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 131:
  switch (attr) {
  case 130:
   reg = LM75_REG_TEMP;
   break;
  case 129:
   reg = LM75_REG_MAX;
   break;
  case 128:
   reg = LM75_REG_HYST;
   break;
  default:
   return -EINVAL;
  }
  err = regmap_read(data->regmap, reg, &regval);
  if (err < 0)
   return err;

  *val = lm75_reg_to_mc(regval, data->resolution);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
