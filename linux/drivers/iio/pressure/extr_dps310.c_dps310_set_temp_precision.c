
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dps310_data {int regmap; } ;


 int DPS310_CFG_REG ;
 int DPS310_TMP_CFG ;
 int DPS310_TMP_PRC_BITS ;
 int DPS310_TMP_SHIFT_EN ;
 int EINVAL ;
 int ilog2 (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int dps310_set_temp_precision(struct dps310_data *data, int val)
{
 int rc;
 u8 shift_en;

 if (val < 0 || val > 128)
  return -EINVAL;

 shift_en = val >= 16 ? DPS310_TMP_SHIFT_EN : 0;
 rc = regmap_write_bits(data->regmap, DPS310_CFG_REG,
          DPS310_TMP_SHIFT_EN, shift_en);
 if (rc)
  return rc;

 return regmap_update_bits(data->regmap, DPS310_TMP_CFG,
      DPS310_TMP_PRC_BITS, ilog2(val));
}
