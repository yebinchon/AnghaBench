
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transform {int dummy; } ;
struct pwl_params {int dummy; } ;
struct dce_transform {int dummy; } ;


 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int configure_regamma_mode (struct dce_transform*,int) ;
 int power_on_lut (struct transform*,int,int,int) ;
 int program_pwl (struct dce_transform*,struct pwl_params const*) ;
 int regamma_config_regions_and_segments (struct dce_transform*,struct pwl_params const*) ;
 int set_bypass_input_gamma (struct dce_transform*) ;

void dce110_opp_program_regamma_pwl_v(
 struct transform *xfm,
 const struct pwl_params *params)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);


 regamma_config_regions_and_segments(xfm_dce, params);

 set_bypass_input_gamma(xfm_dce);


 power_on_lut(xfm, 1, 0, 1);


 program_pwl(xfm_dce, params);


 configure_regamma_mode(xfm_dce, 1);


 power_on_lut(xfm, 0, 0, 1);
}
