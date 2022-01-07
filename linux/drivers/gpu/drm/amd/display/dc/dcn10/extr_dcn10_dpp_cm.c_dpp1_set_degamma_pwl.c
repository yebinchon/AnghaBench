
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwl_params {int hw_points_num; int rgb_resulted; } ;
struct dpp {int dummy; } ;


 int dpp1_degamma_ram_inuse (struct dpp*,int*) ;
 int dpp1_degamma_ram_select (struct dpp*,int) ;
 int dpp1_enable_cm_block (struct dpp*) ;
 int dpp1_power_on_degamma_lut (struct dpp*,int) ;
 int dpp1_program_degamma_lut (struct dpp*,int ,int ,int) ;
 int dpp1_program_degamma_luta_settings (struct dpp*,struct pwl_params const*) ;
 int dpp1_program_degamma_lutb_settings (struct dpp*,struct pwl_params const*) ;

void dpp1_set_degamma_pwl(struct dpp *dpp_base,
         const struct pwl_params *params)
{
 bool is_ram_a = 1;

 dpp1_power_on_degamma_lut(dpp_base, 1);
 dpp1_enable_cm_block(dpp_base);
 dpp1_degamma_ram_inuse(dpp_base, &is_ram_a);
 if (is_ram_a == 1)
  dpp1_program_degamma_lutb_settings(dpp_base, params);
 else
  dpp1_program_degamma_luta_settings(dpp_base, params);

 dpp1_program_degamma_lut(dpp_base, params->rgb_resulted,
       params->hw_points_num, !is_ram_a);
 dpp1_degamma_ram_select(dpp_base, !is_ram_a);
}
