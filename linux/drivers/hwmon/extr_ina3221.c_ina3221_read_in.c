
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ina3221_data {int reg_config; int regmap; int single_shot; } ;
struct device {int dummy; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 int INA3221_CHANNEL3 ;
 int INA3221_CONFIG ;
 int INA3221_NUM_CHANNELS ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;


 int * ina3221_in_reg ;
 long ina3221_is_enabled (struct ina3221_data*,int) ;
 int ina3221_read_value (struct ina3221_data*,int ,int*) ;
 int ina3221_wait_for_data (struct ina3221_data*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ina3221_read_in(struct device *dev, u32 attr, int channel, long *val)
{
 const bool is_shunt = channel > INA3221_CHANNEL3;
 struct ina3221_data *ina = dev_get_drvdata(dev);
 u8 reg = ina3221_in_reg[channel];
 int regval, ret;


 channel %= INA3221_NUM_CHANNELS;

 switch (attr) {
 case 128:
  if (!ina3221_is_enabled(ina, channel))
   return -ENODATA;


  if (ina->single_shot)
   regmap_write(ina->regmap, INA3221_CONFIG,
         ina->reg_config);

  ret = ina3221_wait_for_data(ina);
  if (ret)
   return ret;

  ret = ina3221_read_value(ina, reg, &regval);
  if (ret)
   return ret;





  *val = regval * (is_shunt ? 40 : 8);
  return 0;
 case 129:
  *val = ina3221_is_enabled(ina, channel);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
