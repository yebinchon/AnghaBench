
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmp102 {int regmap; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int TMP102_THIGH_REG ;
 int TMP102_TLOW_REG ;
 long clamp_val (long,int,int) ;
 struct tmp102* dev_get_drvdata (struct device*) ;


 int regmap_write (int ,int,int ) ;
 int tmp102_mC_to_reg (long) ;

__attribute__((used)) static int tmp102_write(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long temp)
{
 struct tmp102 *tmp102 = dev_get_drvdata(dev);
 int reg;

 switch (attr) {
 case 128:
  reg = TMP102_TLOW_REG;
  break;
 case 129:
  reg = TMP102_THIGH_REG;
  break;
 default:
  return -EOPNOTSUPP;
 }

 temp = clamp_val(temp, -256000, 255000);
 return regmap_write(tmp102->regmap, reg, tmp102_mC_to_reg(temp));
}
