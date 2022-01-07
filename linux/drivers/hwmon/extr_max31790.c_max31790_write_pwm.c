
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct max31790_data {long* pwm; int* fan_config; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX31790_FAN_CFG_RPM_MODE ;
 int MAX31790_FAN_CFG_TACH_INPUT_EN ;
 int MAX31790_REG_FAN_CONFIG (int) ;
 int MAX31790_REG_PWMOUT (int) ;
 struct max31790_data* dev_get_drvdata (struct device*) ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max31790_write_pwm(struct device *dev, u32 attr, int channel,
         long val)
{
 struct max31790_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 fan_config;
 int err = 0;

 mutex_lock(&data->update_lock);

 switch (attr) {
 case 128:
  if (val < 0 || val > 255) {
   err = -EINVAL;
   break;
  }
  data->pwm[channel] = val << 8;
  err = i2c_smbus_write_word_swapped(client,
         MAX31790_REG_PWMOUT(channel),
         data->pwm[channel]);
  break;
 case 129:
  fan_config = data->fan_config[channel];
  if (val == 0) {
   fan_config &= ~(MAX31790_FAN_CFG_TACH_INPUT_EN |
     MAX31790_FAN_CFG_RPM_MODE);
  } else if (val == 1) {
   fan_config = (fan_config |
          MAX31790_FAN_CFG_TACH_INPUT_EN) &
         ~MAX31790_FAN_CFG_RPM_MODE;
  } else if (val == 2) {
   fan_config |= MAX31790_FAN_CFG_TACH_INPUT_EN |
          MAX31790_FAN_CFG_RPM_MODE;
  } else {
   err = -EINVAL;
   break;
  }
  data->fan_config[channel] = fan_config;
  err = i2c_smbus_write_byte_data(client,
     MAX31790_REG_FAN_CONFIG(channel),
     fan_config);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 mutex_unlock(&data->update_lock);

 return err;
}
