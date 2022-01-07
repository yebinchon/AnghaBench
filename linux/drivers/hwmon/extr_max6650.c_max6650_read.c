
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max6650_data {int config; int* tach; int count; int alarm; int valid; int speed; int dac; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int DIV_FROM_REG (int) ;
 long DIV_ROUND_CLOSEST (int,int) ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct max6650_data*) ;
 int MAX6650_ALRM_MAX ;
 int MAX6650_ALRM_MIN ;
 int MAX6650_ALRM_TACH ;
 int MAX6650_CFG_MODE_MASK ;
 int MAX6650_CFG_V12 ;
 int PTR_ERR (struct max6650_data*) ;
 int clock ;
 long dac_to_pwm (int ,int) ;
 struct max6650_data* max6650_update_device (struct device*) ;

__attribute__((used)) static int max6650_read(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long *val)
{
 struct max6650_data *data = max6650_update_device(dev);
 int mode;

 if (IS_ERR(data))
  return PTR_ERR(data);

 switch (type) {
 case 130:
  switch (attr) {
  case 128:
   *val = dac_to_pwm(data->dac,
       data->config & MAX6650_CFG_V12);
   break;
  case 129:
   mode = (data->config & MAX6650_CFG_MODE_MASK) >> 4;
   *val = (4 - mode) & 3;
   break;
  default:
   return -EOPNOTSUPP;
  }
  break;
 case 137:
  switch (attr) {
  case 134:
   *val = DIV_ROUND_CLOSEST(data->tach[channel] * 120,
       DIV_FROM_REG(data->count));
   break;
  case 136:
   *val = DIV_FROM_REG(data->count);
   break;
  case 131:





   *val = 60 * DIV_FROM_REG(data->config) * clock /
    (256 * (data->speed + 1));
   break;
  case 132:
   *val = !!(data->alarm & MAX6650_ALRM_MIN);
   data->alarm &= ~MAX6650_ALRM_MIN;
   data->valid = 0;
   break;
  case 133:
   *val = !!(data->alarm & MAX6650_ALRM_MAX);
   data->alarm &= ~MAX6650_ALRM_MAX;
   data->valid = 0;
   break;
  case 135:
   *val = !!(data->alarm & MAX6650_ALRM_TACH);
   data->alarm &= ~MAX6650_ALRM_TACH;
   data->valid = 0;
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
