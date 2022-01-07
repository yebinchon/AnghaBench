
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;


 int CM_3DLUT_MODE ;
 int CM_3DLUT_SIZE ;
 int LUT_BYPASS ;
 int LUT_RAM_A ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_set_3dlut_mode(
  struct dpp *dpp_base,
  enum dc_lut_mode mode,
  bool is_color_channel_12bits,
  bool is_lut_size17x17x17)
{
 uint32_t lut_mode;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 if (mode == LUT_BYPASS)
  lut_mode = 0;
 else if (mode == LUT_RAM_A)
  lut_mode = 1;
 else
  lut_mode = 2;

 REG_UPDATE_2(CM_3DLUT_MODE,
   CM_3DLUT_MODE, lut_mode,
   CM_3DLUT_SIZE, is_lut_size17x17x17 == 1 ? 0 : 1);
}
