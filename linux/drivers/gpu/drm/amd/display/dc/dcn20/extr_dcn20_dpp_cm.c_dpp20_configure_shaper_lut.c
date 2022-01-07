
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_SHAPER_LUT_INDEX ;
 int CM_SHAPER_LUT_WRITE_EN_MASK ;
 int CM_SHAPER_LUT_WRITE_SEL ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_configure_shaper_lut(
  struct dpp *dpp_base,
  bool is_ram_a)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(CM_SHAPER_LUT_WRITE_EN_MASK,
   CM_SHAPER_LUT_WRITE_EN_MASK, 7);
 REG_UPDATE(CM_SHAPER_LUT_WRITE_EN_MASK,
   CM_SHAPER_LUT_WRITE_SEL, is_ram_a == 1 ? 0:1);
 REG_SET(CM_SHAPER_LUT_INDEX, 0, CM_SHAPER_LUT_INDEX, 0);
}
