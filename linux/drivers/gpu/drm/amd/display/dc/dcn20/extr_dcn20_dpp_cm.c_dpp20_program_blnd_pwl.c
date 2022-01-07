
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pwl_result_data {int delta_blue_reg; int delta_green_reg; int delta_red_reg; int blue_reg; int green_reg; int red_reg; } ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;


 int CM_BLNDGAM_LUT_DATA ;
 int REG_SET (int ,int ,int ,int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

__attribute__((used)) static void dpp20_program_blnd_pwl(
  struct dpp *dpp_base,
  const struct pwl_result_data *rgb,
  uint32_t num)
{
 uint32_t i;
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 for (i = 0 ; i < num; i++) {
  REG_SET(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].red_reg);
  REG_SET(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].green_reg);
  REG_SET(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].blue_reg);

  REG_SET(CM_BLNDGAM_LUT_DATA, 0,
    CM_BLNDGAM_LUT_DATA, rgb[i].delta_red_reg);
  REG_SET(CM_BLNDGAM_LUT_DATA, 0,
    CM_BLNDGAM_LUT_DATA, rgb[i].delta_green_reg);
  REG_SET(CM_BLNDGAM_LUT_DATA, 0,
    CM_BLNDGAM_LUT_DATA, rgb[i].delta_blue_reg);

 }

}
