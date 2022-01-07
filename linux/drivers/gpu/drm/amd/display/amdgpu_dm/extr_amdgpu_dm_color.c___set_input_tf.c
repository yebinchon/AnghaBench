
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_color_lut {int dummy; } ;
struct dc_transfer_func {int dummy; } ;
struct dc_gamma {int num_entries; int type; } ;


 int ENOMEM ;
 int GAMMA_CUSTOM ;
 int __drm_lut_to_dc_gamma (struct drm_color_lut const*,struct dc_gamma*,int) ;
 struct dc_gamma* dc_create_gamma () ;
 int dc_gamma_release (struct dc_gamma**) ;
 int mod_color_calculate_degamma_params (struct dc_transfer_func*,struct dc_gamma*,int) ;

__attribute__((used)) static int __set_input_tf(struct dc_transfer_func *func,
     const struct drm_color_lut *lut, uint32_t lut_size)
{
 struct dc_gamma *gamma = ((void*)0);
 bool res;

 gamma = dc_create_gamma();
 if (!gamma)
  return -ENOMEM;

 gamma->type = GAMMA_CUSTOM;
 gamma->num_entries = lut_size;

 __drm_lut_to_dc_gamma(lut, gamma, 0);

 res = mod_color_calculate_degamma_params(func, gamma, 1);
 dc_gamma_release(&gamma);

 return res ? 0 : -ENOMEM;
}
