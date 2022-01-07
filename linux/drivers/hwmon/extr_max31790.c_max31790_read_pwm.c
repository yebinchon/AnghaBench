
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct max31790_data {int* fan_config; int* pwm; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct max31790_data*) ;
 int MAX31790_FAN_CFG_RPM_MODE ;
 int MAX31790_FAN_CFG_TACH_INPUT_EN ;
 int PTR_ERR (struct max31790_data*) ;


 struct max31790_data* max31790_update_device (struct device*) ;

__attribute__((used)) static int max31790_read_pwm(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct max31790_data *data = max31790_update_device(dev);
 u8 fan_config;

 if (IS_ERR(data))
  return PTR_ERR(data);

 fan_config = data->fan_config[channel];

 switch (attr) {
 case 128:
  *val = data->pwm[channel] >> 8;
  return 0;
 case 129:
  if (fan_config & MAX31790_FAN_CFG_RPM_MODE)
   *val = 2;
  else if (fan_config & MAX31790_FAN_CFG_TACH_INPUT_EN)
   *val = 1;
  else
   *val = 0;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
