
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u32 ;
struct mlxreg_fan_tacho {int mask; int reg; } ;
struct TYPE_2__ {int reg; } ;
struct mlxreg_fan {TYPE_1__ pwm; int regmap; int samples; int divider; struct mlxreg_fan_tacho* tacho; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 long MLXREG_FAN_GET_FAULT (long,int ) ;
 long MLXREG_FAN_GET_RPM (long,int ,int ) ;
 struct mlxreg_fan* dev_get_drvdata (struct device*) ;





 int regmap_read (int ,int ,long*) ;

__attribute__((used)) static int
mlxreg_fan_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
  int channel, long *val)
{
 struct mlxreg_fan *fan = dev_get_drvdata(dev);
 struct mlxreg_fan_tacho *tacho;
 u32 regval;
 int err;

 switch (type) {
 case 132:
  tacho = &fan->tacho[channel];
  switch (attr) {
  case 130:
   err = regmap_read(fan->regmap, tacho->reg, &regval);
   if (err)
    return err;

   *val = MLXREG_FAN_GET_RPM(regval, fan->divider,
        fan->samples);
   break;

  case 131:
   err = regmap_read(fan->regmap, tacho->reg, &regval);
   if (err)
    return err;

   *val = MLXREG_FAN_GET_FAULT(regval, tacho->mask);
   break;

  default:
   return -EOPNOTSUPP;
  }
  break;

 case 129:
  switch (attr) {
  case 128:
   err = regmap_read(fan->regmap, fan->pwm.reg, &regval);
   if (err)
    return err;

   *val = regval;
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
