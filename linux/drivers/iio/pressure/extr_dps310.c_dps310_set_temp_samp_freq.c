
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dps310_data {int regmap; } ;


 int DPS310_TMP_CFG ;
 int DPS310_TMP_RATE_BITS ;
 int EINVAL ;
 int ilog2 (int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int dps310_set_temp_samp_freq(struct dps310_data *data, int freq)
{
 u8 val;

 if (freq < 0 || freq > 128)
  return -EINVAL;

 val = ilog2(freq) << 4;

 return regmap_update_bits(data->regmap, DPS310_TMP_CFG,
      DPS310_TMP_RATE_BITS, val);
}
