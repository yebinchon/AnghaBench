
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmp108 {int regmap; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int TMP108_CONF_CONVRATE_MASK ;
 int TMP108_CONF_HYSTERESIS_MASK ;
 int TMP108_CONVRATE_0P25HZ ;
 int TMP108_CONVRATE_16HZ ;
 int TMP108_CONVRATE_1HZ ;
 int TMP108_CONVRATE_4HZ ;
 int TMP108_HYSTERESIS_0C ;
 int TMP108_HYSTERESIS_1C ;
 int TMP108_HYSTERESIS_2C ;
 int TMP108_HYSTERESIS_4C ;
 int TMP108_REG_CONF ;
 int TMP108_REG_THIGH ;
 int TMP108_REG_TLOW ;
 int TMP108_TEMP_MAX_MC ;
 int TMP108_TEMP_MIN_MC ;
 long clamp_val (long,int ,int ) ;
 struct tmp108* dev_get_drvdata (struct device*) ;
 int hwmon_chip ;
 int hwmon_chip_update_interval ;




 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;
 int tmp108_mC_to_temp_reg (long) ;
 long tmp108_temp_reg_to_mC (int) ;

__attribute__((used)) static int tmp108_write(struct device *dev, enum hwmon_sensor_types type,
   u32 attr, int channel, long temp)
{
 struct tmp108 *tmp108 = dev_get_drvdata(dev);
 u32 regval, mask;
 int err;

 if (type == hwmon_chip) {
  if (attr == hwmon_chip_update_interval) {
   if (temp < 156)
    mask = TMP108_CONVRATE_16HZ;
   else if (temp < 625)
    mask = TMP108_CONVRATE_4HZ;
   else if (temp < 2500)
    mask = TMP108_CONVRATE_1HZ;
   else
    mask = TMP108_CONVRATE_0P25HZ;
   return regmap_update_bits(tmp108->regmap,
        TMP108_REG_CONF,
        TMP108_CONF_CONVRATE_MASK,
        mask);
  }
  return -EOPNOTSUPP;
 }

 switch (attr) {
 case 129:
 case 131:
  temp = clamp_val(temp, TMP108_TEMP_MIN_MC, TMP108_TEMP_MAX_MC);
  return regmap_write(tmp108->regmap,
        attr == 129 ?
     TMP108_REG_TLOW : TMP108_REG_THIGH,
        tmp108_mC_to_temp_reg(temp));
 case 128:
 case 130:
  temp = clamp_val(temp, TMP108_TEMP_MIN_MC, TMP108_TEMP_MAX_MC);
  err = regmap_read(tmp108->regmap,
      attr == 128 ?
     TMP108_REG_TLOW : TMP108_REG_THIGH,
      &regval);
  if (err < 0)
   return err;
  if (attr == 128)
   temp -= tmp108_temp_reg_to_mC(regval);
  else
   temp = tmp108_temp_reg_to_mC(regval) - temp;
  if (temp < 500)
   mask = TMP108_HYSTERESIS_0C;
  else if (temp < 1500)
   mask = TMP108_HYSTERESIS_1C;
  else if (temp < 3000)
   mask = TMP108_HYSTERESIS_2C;
  else
   mask = TMP108_HYSTERESIS_4C;
  return regmap_update_bits(tmp108->regmap, TMP108_REG_CONF,
       TMP108_CONF_HYSTERESIS_MASK, mask);
 default:
  return -EOPNOTSUPP;
 }
}
