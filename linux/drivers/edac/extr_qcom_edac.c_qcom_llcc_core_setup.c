
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int CMN_INTERRUPT_2_ENABLE ;
 int DRP0_INTERRUPT_ENABLE ;
 int DRP_ECC_ERROR_CFG ;
 int DRP_INTERRUPT_ENABLE ;
 int SB_DB_DRP_INTERRUPT_ENABLE ;
 int SB_DB_TRP_INTERRUPT_ENABLE ;
 int SB_ERROR_THRESHOLD ;
 int SB_ERROR_THRESHOLD_SHIFT ;
 int TRP0_INTERRUPT_ENABLE ;
 int TRP_INTERRUPT_0_ENABLE ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int qcom_llcc_core_setup(struct regmap *llcc_bcast_regmap)
{
 u32 sb_err_threshold;
 int ret;





 ret = regmap_update_bits(llcc_bcast_regmap, CMN_INTERRUPT_2_ENABLE,
     TRP0_INTERRUPT_ENABLE,
     TRP0_INTERRUPT_ENABLE);
 if (ret)
  return ret;

 ret = regmap_update_bits(llcc_bcast_regmap, TRP_INTERRUPT_0_ENABLE,
     SB_DB_TRP_INTERRUPT_ENABLE,
     SB_DB_TRP_INTERRUPT_ENABLE);
 if (ret)
  return ret;

 sb_err_threshold = (SB_ERROR_THRESHOLD << SB_ERROR_THRESHOLD_SHIFT);
 ret = regmap_write(llcc_bcast_regmap, DRP_ECC_ERROR_CFG,
      sb_err_threshold);
 if (ret)
  return ret;

 ret = regmap_update_bits(llcc_bcast_regmap, CMN_INTERRUPT_2_ENABLE,
     DRP0_INTERRUPT_ENABLE,
     DRP0_INTERRUPT_ENABLE);
 if (ret)
  return ret;

 ret = regmap_write(llcc_bcast_regmap, DRP_INTERRUPT_ENABLE,
      SB_DB_DRP_INTERRUPT_ENABLE);
 return ret;
}
