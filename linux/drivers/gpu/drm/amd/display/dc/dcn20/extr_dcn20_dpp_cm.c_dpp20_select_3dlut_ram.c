
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;


 int CM_3DLUT_30BIT_EN ;
 int CM_3DLUT_RAM_SEL ;
 int CM_3DLUT_READ_WRITE_CONTROL ;
 int LUT_RAM_A ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_select_3dlut_ram(
  struct dpp *dpp_base,
  enum dc_lut_mode mode,
  bool is_color_channel_12bits)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE_2(CM_3DLUT_READ_WRITE_CONTROL,
   CM_3DLUT_RAM_SEL, mode == LUT_RAM_A ? 0 : 1,
   CM_3DLUT_30BIT_EN,
   is_color_channel_12bits == 1 ? 0:1);
}
