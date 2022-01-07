
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct ina3221_input {int shunt_resistor; } ;
struct ina3221_data {int * fields; int reg_config; int regmap; int single_shot; struct ina3221_input* inputs; } ;
struct device {int dummy; } ;


 long DIV_ROUND_CLOSEST (int,int) ;
 int ENODATA ;
 int EOPNOTSUPP ;
 int INA3221_CONFIG ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;





 size_t** ina3221_curr_reg ;
 int ina3221_is_enabled (struct ina3221_data*,int) ;
 int ina3221_read_value (struct ina3221_data*,size_t,int*) ;
 int ina3221_wait_for_data (struct ina3221_data*) ;
 int regmap_field_read (int ,int*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ina3221_read_curr(struct device *dev, u32 attr,
        int channel, long *val)
{
 struct ina3221_data *ina = dev_get_drvdata(dev);
 struct ina3221_input *input = &ina->inputs[channel];
 int resistance_uo = input->shunt_resistor;
 u8 reg = ina3221_curr_reg[attr][channel];
 int regval, voltage_nv, ret;

 switch (attr) {
 case 130:
  if (!ina3221_is_enabled(ina, channel))
   return -ENODATA;


  if (ina->single_shot)
   regmap_write(ina->regmap, INA3221_CONFIG,
         ina->reg_config);

  ret = ina3221_wait_for_data(ina);
  if (ret)
   return ret;


 case 132:
 case 129:
  ret = ina3221_read_value(ina, reg, &regval);
  if (ret)
   return ret;


  voltage_nv = regval * 40000;

  *val = DIV_ROUND_CLOSEST(voltage_nv, resistance_uo);
  return 0;
 case 131:
 case 128:

  if (!ina3221_is_enabled(ina, channel)) {

   *val = 0;
   return 0;
  }
  ret = regmap_field_read(ina->fields[reg], &regval);
  if (ret)
   return ret;
  *val = regval;
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
