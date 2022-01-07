
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct max6650_data {int config; int update_lock; void* count; int client; void* dac; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 long ARRAY_SIZE (int *) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX6650_CFG_V12 ;
 int MAX6650_REG_COUNT ;
 int MAX6650_REG_DAC ;
 int clamp_val (long,int ,int) ;
 struct max6650_data* dev_get_drvdata (struct device*) ;






 int i2c_smbus_write_byte_data (int ,int ,void*) ;
 int * max6650_pwm_modes ;
 int max6650_set_operating_mode (struct max6650_data*,int ) ;
 int max6650_set_target (struct max6650_data*,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pwm_to_dac (int ,int) ;

__attribute__((used)) static int max6650_write(struct device *dev, enum hwmon_sensor_types type,
    u32 attr, int channel, long val)
{
 struct max6650_data *data = dev_get_drvdata(dev);
 int ret = 0;
 u8 reg;

 mutex_lock(&data->update_lock);

 switch (type) {
 case 130:
  switch (attr) {
  case 128:
   reg = pwm_to_dac(clamp_val(val, 0, 255),
      data->config & MAX6650_CFG_V12);
   ret = i2c_smbus_write_byte_data(data->client,
       MAX6650_REG_DAC, reg);
   if (ret)
    break;
   data->dac = reg;
   break;
  case 129:
   if (val < 0 || val >= ARRAY_SIZE(max6650_pwm_modes)) {
    ret = -EINVAL;
    break;
   }
   ret = max6650_set_operating_mode(data,
      max6650_pwm_modes[val]);
   break;
  default:
   ret = -EOPNOTSUPP;
   break;
  }
  break;
 case 133:
  switch (attr) {
  case 132:
   switch (val) {
   case 1:
    reg = 0;
    break;
   case 2:
    reg = 1;
    break;
   case 4:
    reg = 2;
    break;
   case 8:
    reg = 3;
    break;
   default:
    ret = -EINVAL;
    goto error;
   }
   ret = i2c_smbus_write_byte_data(data->client,
       MAX6650_REG_COUNT, reg);
   if (ret)
    break;
   data->count = reg;
   break;
  case 131:
   if (val < 0) {
    ret = -EINVAL;
    break;
   }
   ret = max6650_set_target(data, val);
   break;
  default:
   ret = -EOPNOTSUPP;
   break;
  }
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

error:
 mutex_unlock(&data->update_lock);
 return ret;
}
