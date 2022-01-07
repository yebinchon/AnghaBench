
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmc150_magn_data {int regmap; } ;
typedef enum bmc150_magn_power_modes { ____Placeholder_bmc150_magn_power_modes } bmc150_magn_power_modes ;


 int BMC150_MAGN_MASK_OPMODE ;
 int BMC150_MAGN_MASK_POWER_CTL ;
 int BMC150_MAGN_MODE_NORMAL ;
 int BMC150_MAGN_MODE_SLEEP ;



 int BMC150_MAGN_REG_OPMODE_ODR ;
 int BMC150_MAGN_REG_POWER ;
 int BMC150_MAGN_SHIFT_OPMODE ;
 int BMC150_MAGN_START_UP_TIME_MS ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bmc150_magn_set_power_mode(struct bmc150_magn_data *data,
          enum bmc150_magn_power_modes mode,
          bool state)
{
 int ret;

 switch (mode) {
 case 128:
  ret = regmap_update_bits(data->regmap, BMC150_MAGN_REG_POWER,
      BMC150_MAGN_MASK_POWER_CTL, !state);
  if (ret < 0)
   return ret;
  usleep_range(BMC150_MAGN_START_UP_TIME_MS * 1000, 20000);
  return 0;
 case 129:
  return regmap_update_bits(data->regmap,
       BMC150_MAGN_REG_OPMODE_ODR,
       BMC150_MAGN_MASK_OPMODE,
       BMC150_MAGN_MODE_SLEEP <<
       BMC150_MAGN_SHIFT_OPMODE);
 case 130:
  return regmap_update_bits(data->regmap,
       BMC150_MAGN_REG_OPMODE_ODR,
       BMC150_MAGN_MASK_OPMODE,
       BMC150_MAGN_MODE_NORMAL <<
       BMC150_MAGN_SHIFT_OPMODE);
 }

 return -EINVAL;
}
