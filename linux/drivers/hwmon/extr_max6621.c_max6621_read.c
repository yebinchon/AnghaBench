
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct max6621_data {int* input_chan2reg; int client; int regmap; } ;
struct device {int dummy; } ;
typedef long s8 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 long MAX6621_ALERT_DIS ;
 int MAX6621_CLEAR_ALERT_REG ;
 int MAX6621_CONFIG2_REG ;
 long MAX6621_REG_TEMP_SHIFT ;
 int MAX6621_TEMP_ALERT_CAUSE_REG ;
 int MAX6621_TEMP_ALERT_CHAN_SHIFT ;
 struct max6621_data* dev_get_drvdata (struct device*) ;





 int i2c_smbus_write_byte (int ,int ) ;
 int* max6621_temp_alert_chan2reg ;
 int max6621_verify_reg_data (struct device*,long) ;
 int regmap_read (int ,int,long*) ;

__attribute__((used)) static int
max6621_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
      int channel, long *val)
{
 struct max6621_data *data = dev_get_drvdata(dev);
 u32 regval;
 int reg;
 s8 temp;
 int ret;

 switch (type) {
 case 132:
  switch (attr) {
  case 129:
   reg = data->input_chan2reg[channel];
   ret = regmap_read(data->regmap, reg, &regval);
   if (ret)
    return ret;

   ret = max6621_verify_reg_data(dev, regval);
   if (ret)
    return ret;






   temp = (regval >> MAX6621_REG_TEMP_SHIFT);
   *val = temp * 1000L;

   break;
  case 128:
   ret = regmap_read(data->regmap, MAX6621_CONFIG2_REG,
       &regval);
   if (ret)
    return ret;

   ret = max6621_verify_reg_data(dev, regval);
   if (ret)
    return ret;

   *val = (regval >> MAX6621_REG_TEMP_SHIFT) *
          1000L;

   break;
  case 131:
   channel -= MAX6621_TEMP_ALERT_CHAN_SHIFT;
   reg = max6621_temp_alert_chan2reg[channel];
   ret = regmap_read(data->regmap, reg, &regval);
   if (ret)
    return ret;

   ret = max6621_verify_reg_data(dev, regval);
   if (ret)
    return ret;

   *val = regval * 1000L;

   break;
  case 130:






   *val = 0;
   ret = regmap_read(data->regmap,
       MAX6621_TEMP_ALERT_CAUSE_REG,
       &regval);
   if (ret)
    return ret;

   ret = max6621_verify_reg_data(dev, regval);
   if (ret) {

    if (regval == MAX6621_ALERT_DIS)
     return 0;
    else
     return ret;
   }





   if (regval) {
    ret = i2c_smbus_write_byte(data->client,
      MAX6621_CLEAR_ALERT_REG);
    if (ret)
     return ret;
   }

   *val = !!regval;

   break;
  default:
   return -EOPNOTSUPP;
  }
  break;

 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
