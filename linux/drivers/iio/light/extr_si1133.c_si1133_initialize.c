
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {int regmap; } ;


 int SI1133_IRQ_CHANNEL_ENABLE ;
 int SI1133_REG_IRQ_ENABLE ;
 int SI1133_REG_MEAS_RATE ;
 int regmap_write (int ,int ,int ) ;
 int si1133_cmd_reset_sw (struct si1133_data*) ;
 int si1133_init_lux_channels (struct si1133_data*) ;
 int si1133_param_set (struct si1133_data*,int ,int ) ;

__attribute__((used)) static int si1133_initialize(struct si1133_data *data)
{
 int err;

 err = si1133_cmd_reset_sw(data);
 if (err)
  return err;


 err = si1133_param_set(data, SI1133_REG_MEAS_RATE, 0);
 if (err)
  return err;

 err = si1133_init_lux_channels(data);
 if (err)
  return err;

 return regmap_write(data->regmap, SI1133_REG_IRQ_ENABLE,
       SI1133_IRQ_CHANNEL_ENABLE);
}
