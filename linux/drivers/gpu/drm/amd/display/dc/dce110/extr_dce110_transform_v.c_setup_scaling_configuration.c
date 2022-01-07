
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int h_taps; int v_taps; int h_taps_c; int v_taps_c; } ;
struct scaler_data {scalar_t__ format; TYPE_2__ taps; } ;
struct TYPE_3__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 scalar_t__ PIXEL_FORMAT_420BPP8 ;
 int SCLV_CONTROL ;
 int SCLV_MODE ;
 int SCLV_TAP_CONTROL ;
 int SCL_BOUNDARY_MODE ;
 int SCL_H_NUM_OF_TAPS ;
 int SCL_H_NUM_OF_TAPS_C ;
 int SCL_MODE ;
 int SCL_MODE_C ;
 int SCL_PSCL_EN ;
 int SCL_PSCL_EN_C ;
 int SCL_V_NUM_OF_TAPS ;
 int SCL_V_NUM_OF_TAPS_C ;
 int dm_write_reg (struct dc_context*,int ,scalar_t__) ;
 int get_reg_field_value (scalar_t__,int ,int ) ;
 int mmSCLV_CONTROL ;
 int mmSCLV_MODE ;
 int mmSCLV_TAP_CONTROL ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

__attribute__((used)) static bool setup_scaling_configuration(
 struct dce_transform *xfm_dce,
 const struct scaler_data *data)
{
 bool is_scaling_needed = 0;
 struct dc_context *ctx = xfm_dce->base.ctx;
 uint32_t value = 0;

 set_reg_field_value(value, data->taps.h_taps - 1,
   SCLV_TAP_CONTROL, SCL_H_NUM_OF_TAPS);
 set_reg_field_value(value, data->taps.v_taps - 1,
   SCLV_TAP_CONTROL, SCL_V_NUM_OF_TAPS);
 set_reg_field_value(value, data->taps.h_taps_c - 1,
   SCLV_TAP_CONTROL, SCL_H_NUM_OF_TAPS_C);
 set_reg_field_value(value, data->taps.v_taps_c - 1,
   SCLV_TAP_CONTROL, SCL_V_NUM_OF_TAPS_C);
 dm_write_reg(ctx, mmSCLV_TAP_CONTROL, value);

 value = 0;
 if (data->taps.h_taps + data->taps.v_taps > 2) {
  set_reg_field_value(value, 1, SCLV_MODE, SCL_MODE);
  set_reg_field_value(value, 1, SCLV_MODE, SCL_PSCL_EN);
  is_scaling_needed = 1;
 } else {
  set_reg_field_value(value, 0, SCLV_MODE, SCL_MODE);
  set_reg_field_value(value, 0, SCLV_MODE, SCL_PSCL_EN);
 }

 if (data->taps.h_taps_c + data->taps.v_taps_c > 2) {
  set_reg_field_value(value, 1, SCLV_MODE, SCL_MODE_C);
  set_reg_field_value(value, 1, SCLV_MODE, SCL_PSCL_EN_C);
  is_scaling_needed = 1;
 } else if (data->format != PIXEL_FORMAT_420BPP8) {
  set_reg_field_value(
   value,
   get_reg_field_value(value, SCLV_MODE, SCL_MODE),
   SCLV_MODE,
   SCL_MODE_C);
  set_reg_field_value(
   value,
   get_reg_field_value(value, SCLV_MODE, SCL_PSCL_EN),
   SCLV_MODE,
   SCL_PSCL_EN_C);
 } else {
  set_reg_field_value(value, 0, SCLV_MODE, SCL_MODE_C);
  set_reg_field_value(value, 0, SCLV_MODE, SCL_PSCL_EN_C);
 }
 dm_write_reg(ctx, mmSCLV_MODE, value);

 value = 0;





 set_reg_field_value(value, 1, SCLV_CONTROL, SCL_BOUNDARY_MODE);
 dm_write_reg(ctx, mmSCLV_CONTROL, value);

 return is_scaling_needed;
}
