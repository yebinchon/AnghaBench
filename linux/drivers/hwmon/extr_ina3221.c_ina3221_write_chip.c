
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ina3221_data {int reg_config; int regmap; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;
 int INA3221_CONFIG ;
 int INA3221_CONFIG_AVG_MASK ;
 int INA3221_CONFIG_AVG_SHIFT ;
 int INA3221_CONFIG_VBUS_CT_MASK ;
 int INA3221_CONFIG_VBUS_CT_SHIFT ;
 int INA3221_CONFIG_VSH_CT_MASK ;
 int INA3221_CONFIG_VSH_CT_SHIFT ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;
 int find_closest (int,int ,int ) ;


 int ina3221_avg_samples ;
 int ina3221_conv_time ;
 int ina3221_interval_ms_to_conv_time (int,long) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ina3221_write_chip(struct device *dev, u32 attr, long val)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 int ret, idx;
 u32 tmp;

 switch (attr) {
 case 129:
  idx = find_closest(val, ina3221_avg_samples,
       ARRAY_SIZE(ina3221_avg_samples));

  tmp = (ina->reg_config & ~INA3221_CONFIG_AVG_MASK) |
        (idx << INA3221_CONFIG_AVG_SHIFT);
  ret = regmap_write(ina->regmap, INA3221_CONFIG, tmp);
  if (ret)
   return ret;


  ina->reg_config = tmp;
  return 0;
 case 128:
  tmp = ina3221_interval_ms_to_conv_time(ina->reg_config, val);
  idx = find_closest(tmp, ina3221_conv_time,
       ARRAY_SIZE(ina3221_conv_time));


  tmp = INA3221_CONFIG_VBUS_CT_MASK | INA3221_CONFIG_VSH_CT_MASK;
  tmp = (ina->reg_config & ~tmp) |
        (idx << INA3221_CONFIG_VBUS_CT_SHIFT) |
        (idx << INA3221_CONFIG_VSH_CT_SHIFT);
  ret = regmap_write(ina->regmap, INA3221_CONFIG, tmp);
  if (ret)
   return ret;


  ina->reg_config = tmp;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
