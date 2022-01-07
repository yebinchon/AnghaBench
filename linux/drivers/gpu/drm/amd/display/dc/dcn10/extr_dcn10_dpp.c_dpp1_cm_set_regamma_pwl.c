
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pwl_params {int hw_points_num; int rgb_resulted; } ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int is_write_to_ram_a_safe; struct pwl_params pwl_data; } ;
typedef enum opp_regamma { ____Placeholder_opp_regamma } opp_regamma ;


 int CM_RGAM_CONTROL ;
 int CM_RGAM_LUT_MODE ;




 int REG_SET (int ,int ,int ,int) ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int dpp1_cm_configure_regamma_lut (struct dpp*,int) ;
 int dpp1_cm_power_on_regamma_lut (struct dpp*,int) ;
 int dpp1_cm_program_regamma_lut (struct dpp*,int ,int ) ;
 int dpp1_cm_program_regamma_luta_settings (struct dpp*,struct pwl_params const*) ;
 int dpp1_cm_program_regamma_lutb_settings (struct dpp*,struct pwl_params const*) ;
 int memcmp (struct pwl_params*,struct pwl_params const*,int) ;

__attribute__((used)) static void dpp1_cm_set_regamma_pwl(
 struct dpp *dpp_base, const struct pwl_params *params, enum opp_regamma mode)
{
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 uint32_t re_mode = 0;

 switch (mode) {
 case 131:
  re_mode = 0;
  break;
 case 130:
  re_mode = 1;
  break;
 case 128:
  re_mode = 2;
  break;
 case 129:
  re_mode = dpp->is_write_to_ram_a_safe ? 4 : 3;
  if (memcmp(&dpp->pwl_data, params, sizeof(*params)) == 0)
   break;

  dpp1_cm_power_on_regamma_lut(dpp_base, 1);
  dpp1_cm_configure_regamma_lut(dpp_base, dpp->is_write_to_ram_a_safe);

  if (dpp->is_write_to_ram_a_safe)
   dpp1_cm_program_regamma_luta_settings(dpp_base, params);
  else
   dpp1_cm_program_regamma_lutb_settings(dpp_base, params);

  dpp1_cm_program_regamma_lut(dpp_base, params->rgb_resulted,
         params->hw_points_num);
  dpp->pwl_data = *params;

  re_mode = dpp->is_write_to_ram_a_safe ? 3 : 4;
  dpp->is_write_to_ram_a_safe = !dpp->is_write_to_ram_a_safe;
  break;
 default:
  break;
 }
 REG_SET(CM_RGAM_CONTROL, 0, CM_RGAM_LUT_MODE, re_mode);
}
