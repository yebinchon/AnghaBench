
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;


 int CM_RGAM_LUT_INDEX ;
 int CM_RGAM_LUT_WRITE_EN_MASK ;
 int CM_RGAM_LUT_WRITE_SEL ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;

void dpp1_cm_configure_regamma_lut(
  struct dpp *dpp_base,
  bool is_ram_a)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);

 REG_UPDATE(CM_RGAM_LUT_WRITE_EN_MASK,
   CM_RGAM_LUT_WRITE_EN_MASK, 7);
 REG_UPDATE(CM_RGAM_LUT_WRITE_EN_MASK,
   CM_RGAM_LUT_WRITE_SEL, is_ram_a == 1 ? 0:1);
 REG_SET(CM_RGAM_LUT_INDEX, 0, CM_RGAM_LUT_INDEX, 0);
}
