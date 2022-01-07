
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct bmc150_magn_data {int regmap; } ;
struct TYPE_3__ {size_t reg_val; int freq; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int BMC150_MAGN_MASK_ODR ;
 int BMC150_MAGN_REG_OPMODE_ODR ;
 int BMC150_MAGN_SHIFT_ODR ;
 int EINVAL ;
 TYPE_1__* bmc150_magn_samp_freq_table ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bmc150_magn_get_odr(struct bmc150_magn_data *data, int *val)
{
 int ret, reg_val;
 u8 i, odr_val;

 ret = regmap_read(data->regmap, BMC150_MAGN_REG_OPMODE_ODR, &reg_val);
 if (ret < 0)
  return ret;
 odr_val = (reg_val & BMC150_MAGN_MASK_ODR) >> BMC150_MAGN_SHIFT_ODR;

 for (i = 0; i < ARRAY_SIZE(bmc150_magn_samp_freq_table); i++)
  if (bmc150_magn_samp_freq_table[i].reg_val == odr_val) {
   *val = bmc150_magn_samp_freq_table[i].freq;
   return 0;
  }

 return -EINVAL;
}
