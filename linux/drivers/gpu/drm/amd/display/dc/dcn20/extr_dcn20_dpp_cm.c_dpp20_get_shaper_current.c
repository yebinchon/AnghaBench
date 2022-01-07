
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;


 int CM_SHAPER_CONFIG_STATUS ;
 int CM_SHAPER_LUT_WRITE_EN_MASK ;
 int LUT_BYPASS ;
 int LUT_RAM_A ;
 int LUT_RAM_B ;
 int REG_GET (int ,int ,int*) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static enum dc_lut_mode dpp20_get_shaper_current(struct dpp *dpp_base)
{
 enum dc_lut_mode mode;
 uint32_t state_mode;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_GET(CM_SHAPER_LUT_WRITE_EN_MASK,
   CM_SHAPER_CONFIG_STATUS, &state_mode);

  switch (state_mode) {
  case 0:
   mode = LUT_BYPASS;
   break;
  case 1:
   mode = LUT_RAM_A;
   break;
  case 2:
   mode = LUT_RAM_B;
   break;
  default:
   mode = LUT_BYPASS;
   break;
  }
  return mode;
}
