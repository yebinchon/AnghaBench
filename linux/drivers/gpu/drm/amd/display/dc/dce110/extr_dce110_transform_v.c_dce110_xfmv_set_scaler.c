
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct transform {int dummy; } ;
struct sclv_ratios_inits {int member_0; } ;
struct TYPE_4__ {int h_taps_c; int h_taps; int v_taps_c; int v_taps; } ;
struct TYPE_3__ {int horz_c; int vert_c; int horz; int vert; } ;
struct scaler_data {TYPE_2__ taps; TYPE_1__ ratios; } ;
struct rect {int member_0; } ;
struct dce_transform {int const* filter_h_c; int const* filter_h; int const* filter_v_c; int const* filter_v; } ;


 int FILTER_TYPE_CBCR_HORIZONTAL ;
 int FILTER_TYPE_CBCR_VERTICAL ;
 int FILTER_TYPE_RGB_Y_HORIZONTAL ;
 int FILTER_TYPE_RGB_Y_VERTICAL ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int calculate_inits (struct dce_transform*,struct scaler_data const*,struct sclv_ratios_inits*,struct rect*,struct rect*) ;
 int calculate_viewport (struct scaler_data const*,struct rect*,struct rect*) ;
 int dce110_xfmv_power_up_line_buffer (struct transform*) ;
 int * get_filter_coeffs_64p (int ,int ) ;
 int program_multi_taps_filter (struct dce_transform*,int ,int const*,int ) ;
 int program_overscan (struct dce_transform*,struct scaler_data const*) ;
 int program_scl_ratios_inits (struct dce_transform*,struct sclv_ratios_inits*) ;
 int program_viewport (struct dce_transform*,struct rect*,struct rect*) ;
 int set_coeff_update_complete (struct dce_transform*) ;
 int setup_scaling_configuration (struct dce_transform*,struct scaler_data const*) ;

__attribute__((used)) static void dce110_xfmv_set_scaler(
 struct transform *xfm,
 const struct scaler_data *data)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 bool is_scaling_required = 0;
 bool filter_updated = 0;
 const uint16_t *coeffs_v, *coeffs_h, *coeffs_h_c, *coeffs_v_c;
 struct rect luma_viewport = {0};
 struct rect chroma_viewport = {0};

 dce110_xfmv_power_up_line_buffer(xfm);




 calculate_viewport(data, &luma_viewport, &chroma_viewport);


 program_overscan(xfm_dce, data);


 is_scaling_required = setup_scaling_configuration(xfm_dce, data);

 if (is_scaling_required) {


  struct sclv_ratios_inits inits = { 0 };

  calculate_inits(
   xfm_dce,
   data,
   &inits,
   &luma_viewport,
   &chroma_viewport);

  program_scl_ratios_inits(xfm_dce, &inits);

  coeffs_v = get_filter_coeffs_64p(data->taps.v_taps, data->ratios.vert);
  coeffs_h = get_filter_coeffs_64p(data->taps.h_taps, data->ratios.horz);
  coeffs_v_c = get_filter_coeffs_64p(data->taps.v_taps_c, data->ratios.vert_c);
  coeffs_h_c = get_filter_coeffs_64p(data->taps.h_taps_c, data->ratios.horz_c);

  if (coeffs_v != xfm_dce->filter_v
    || coeffs_v_c != xfm_dce->filter_v_c
    || coeffs_h != xfm_dce->filter_h
    || coeffs_h_c != xfm_dce->filter_h_c) {

   program_multi_taps_filter(
     xfm_dce,
     data->taps.v_taps,
     coeffs_v,
     FILTER_TYPE_RGB_Y_VERTICAL);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.v_taps_c,
     coeffs_v_c,
     FILTER_TYPE_CBCR_VERTICAL);


   program_multi_taps_filter(
     xfm_dce,
     data->taps.h_taps,
     coeffs_h,
     FILTER_TYPE_RGB_Y_HORIZONTAL);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.h_taps_c,
     coeffs_h_c,
     FILTER_TYPE_CBCR_HORIZONTAL);

   xfm_dce->filter_v = coeffs_v;
   xfm_dce->filter_v_c = coeffs_v_c;
   xfm_dce->filter_h = coeffs_h;
   xfm_dce->filter_h_c = coeffs_h_c;
   filter_updated = 1;
  }
 }


 program_viewport(xfm_dce, &luma_viewport, &chroma_viewport);


 if (filter_updated)
  set_coeff_update_complete(xfm_dce);
}
