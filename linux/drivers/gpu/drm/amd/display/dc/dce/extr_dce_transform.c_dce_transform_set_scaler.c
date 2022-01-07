
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct transform {int dummy; } ;
struct scl_ratios_inits {int member_0; } ;
struct TYPE_6__ {int alpha_en; } ;
struct TYPE_5__ {int h_taps; int v_taps; } ;
struct TYPE_4__ {int horz; int vert; } ;
struct scaler_data {TYPE_3__ lb_params; int viewport; TYPE_2__ taps; TYPE_1__ ratios; } ;
struct dce_transform {int const* filter_h; int const* filter_v; int lb_memory_size; } ;


 int ALPHA_EN ;
 int FILTER_TYPE_ALPHA_HORIZONTAL ;
 int FILTER_TYPE_ALPHA_VERTICAL ;
 int FILTER_TYPE_RGB_Y_HORIZONTAL ;
 int FILTER_TYPE_RGB_Y_VERTICAL ;
 int LB_DATA_FORMAT ;
 int LB_MEMORY_CONFIG ;
 int LB_MEMORY_CTRL ;
 int LB_MEMORY_SIZE ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int ) ;
 int SCL_COEF_UPDATE_COMPLETE ;
 int SCL_F_SHARP_CONTROL ;
 int SCL_HORZ_FILTER_CONTROL ;
 int SCL_H_2TAP_HARDCODE_COEF_EN ;
 int SCL_UPDATE ;
 int SCL_VERT_FILTER_CONTROL ;
 int SCL_V_2TAP_HARDCODE_COEF_EN ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int calculate_inits (struct dce_transform*,struct scaler_data const*,struct scl_ratios_inits*) ;
 int * get_filter_coeffs_16p (int ,int ) ;
 int program_multi_taps_filter (struct dce_transform*,int ,int const*,int ) ;
 int program_overscan (struct dce_transform*,struct scaler_data const*) ;
 int program_scl_ratios_inits (struct dce_transform*,struct scl_ratios_inits*) ;
 int program_viewport (struct dce_transform*,int *) ;
 int setup_scaling_configuration (struct dce_transform*,struct scaler_data const*) ;

__attribute__((used)) static void dce_transform_set_scaler(
 struct transform *xfm,
 const struct scaler_data *data)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 bool is_scaling_required;
 bool filter_updated = 0;
 const uint16_t *coeffs_v, *coeffs_h;


 REG_SET_2(LB_MEMORY_CTRL, 0,
   LB_MEMORY_CONFIG, 0,
   LB_MEMORY_SIZE, xfm_dce->lb_memory_size);


 REG_WRITE(SCL_F_SHARP_CONTROL, 0);


 program_overscan(xfm_dce, data);


 is_scaling_required = setup_scaling_configuration(xfm_dce, data);

 if (is_scaling_required) {

  struct scl_ratios_inits inits = { 0 };

  calculate_inits(xfm_dce, data, &inits);

  program_scl_ratios_inits(xfm_dce, &inits);

  coeffs_v = get_filter_coeffs_16p(data->taps.v_taps, data->ratios.vert);
  coeffs_h = get_filter_coeffs_16p(data->taps.h_taps, data->ratios.horz);

  if (coeffs_v != xfm_dce->filter_v || coeffs_h != xfm_dce->filter_h) {

   if (xfm_dce->filter_v == ((void*)0))
    REG_SET(SCL_VERT_FILTER_CONTROL, 0,
      SCL_V_2TAP_HARDCODE_COEF_EN, 0);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.v_taps,
     coeffs_v,
     FILTER_TYPE_RGB_Y_VERTICAL);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.v_taps,
     coeffs_v,
     FILTER_TYPE_ALPHA_VERTICAL);


   if (xfm_dce->filter_h == ((void*)0))
    REG_SET(SCL_HORZ_FILTER_CONTROL, 0,
      SCL_H_2TAP_HARDCODE_COEF_EN, 0);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.h_taps,
     coeffs_h,
     FILTER_TYPE_RGB_Y_HORIZONTAL);
   program_multi_taps_filter(
     xfm_dce,
     data->taps.h_taps,
     coeffs_h,
     FILTER_TYPE_ALPHA_HORIZONTAL);

   xfm_dce->filter_v = coeffs_v;
   xfm_dce->filter_h = coeffs_h;
   filter_updated = 1;
  }
 }


 program_viewport(xfm_dce, &data->viewport);


 if (filter_updated)
  REG_UPDATE(SCL_UPDATE, SCL_COEF_UPDATE_COMPLETE, 1);

 REG_UPDATE(LB_DATA_FORMAT, ALPHA_EN, data->lb_params.alpha_en);
}
