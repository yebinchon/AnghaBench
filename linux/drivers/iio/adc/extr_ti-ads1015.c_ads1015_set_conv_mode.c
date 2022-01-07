
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads1015_data {int regmap; } ;


 int ADS1015_CFG_MOD_MASK ;
 int ADS1015_CFG_MOD_SHIFT ;
 int ADS1015_CFG_REG ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int ads1015_set_conv_mode(struct ads1015_data *data, int mode)
{
 return regmap_update_bits(data->regmap, ADS1015_CFG_REG,
      ADS1015_CFG_MOD_MASK,
      mode << ADS1015_CFG_MOD_SHIFT);
}
