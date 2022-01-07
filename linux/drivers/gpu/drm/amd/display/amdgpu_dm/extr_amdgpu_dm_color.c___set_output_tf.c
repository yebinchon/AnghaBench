
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_color_lut {int dummy; } ;
struct dc_transfer_func {scalar_t__ tf; } ;
struct dc_gamma {int type; scalar_t__ num_entries; } ;


 int ASSERT (int ) ;
 int ENOMEM ;
 int GAMMA_CS_TFM_1D ;
 int GAMMA_CUSTOM ;
 scalar_t__ MAX_COLOR_LUT_ENTRIES ;
 scalar_t__ TRANSFER_FUNCTION_LINEAR ;
 int __drm_lut_to_dc_gamma (struct drm_color_lut const*,struct dc_gamma*,int) ;
 struct dc_gamma* dc_create_gamma () ;
 int dc_gamma_release (struct dc_gamma**) ;
 int mod_color_calculate_degamma_params (struct dc_transfer_func*,struct dc_gamma*,int) ;
 int mod_color_calculate_regamma_params (struct dc_transfer_func*,struct dc_gamma*,int,int,int *) ;

__attribute__((used)) static int __set_output_tf(struct dc_transfer_func *func,
      const struct drm_color_lut *lut, uint32_t lut_size,
      bool has_rom)
{
 struct dc_gamma *gamma = ((void*)0);
 bool res;

 ASSERT(lut && lut_size == MAX_COLOR_LUT_ENTRIES);

 gamma = dc_create_gamma();
 if (!gamma)
  return -ENOMEM;

 gamma->num_entries = lut_size;
 __drm_lut_to_dc_gamma(lut, gamma, 0);

 if (func->tf == TRANSFER_FUNCTION_LINEAR) {





  gamma->type = GAMMA_CUSTOM;
  res = mod_color_calculate_degamma_params(func, gamma, 1);
 } else {




  gamma->type = GAMMA_CS_TFM_1D;
  res = mod_color_calculate_regamma_params(func, gamma, 0,
        has_rom, ((void*)0));
 }

 dc_gamma_release(&gamma);

 return res ? 0 : -ENOMEM;
}
