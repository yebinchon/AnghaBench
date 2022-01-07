
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg; } ;
struct mlxreg_fan {TYPE_1__ pwm; int regmap; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;
 int EOPNOTSUPP ;
 long MLXREG_FAN_MAX_DUTY ;
 long MLXREG_FAN_MIN_DUTY ;
 struct mlxreg_fan* dev_get_drvdata (struct device*) ;


 int regmap_write (int ,int ,long) ;

__attribute__((used)) static int
mlxreg_fan_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
   int channel, long val)
{
 struct mlxreg_fan *fan = dev_get_drvdata(dev);

 switch (type) {
 case 129:
  switch (attr) {
  case 128:
   if (val < MLXREG_FAN_MIN_DUTY ||
       val > MLXREG_FAN_MAX_DUTY)
    return -EINVAL;
   return regmap_write(fan->regmap, fan->pwm.reg, val);
  default:
   return -EOPNOTSUPP;
  }
  break;

 default:
  return -EOPNOTSUPP;
 }

 return -EOPNOTSUPP;
}
