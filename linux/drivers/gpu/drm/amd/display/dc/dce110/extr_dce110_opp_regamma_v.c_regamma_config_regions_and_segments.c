
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pwl_params {struct gamma_curve* arr_curve_points; TYPE_1__* arr_points; } ;
struct gamma_curve {int segments_num; int offset; } ;
struct TYPE_4__ {int ctx; } ;
struct dce_transform {TYPE_2__ base; } ;
struct TYPE_3__ {int custom_float_y; int custom_float_slope; int custom_float_x; } ;


 int GAMMA_CORR_CNTLA_END_CNTL1 ;
 int GAMMA_CORR_CNTLA_END_CNTL2 ;
 int GAMMA_CORR_CNTLA_EXP_REGION0_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION0_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION10_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION10_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION11_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION11_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION12_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION12_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION13_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION13_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION14_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION14_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION15_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION15_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION1_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION1_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION2_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION2_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION3_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION3_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION4_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION4_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION5_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION5_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION6_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION6_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION7_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION7_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION8_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION8_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION9_LUT_OFFSET ;
 int GAMMA_CORR_CNTLA_EXP_REGION9_NUM_SEGMENTS ;
 int GAMMA_CORR_CNTLA_EXP_REGION_END ;
 int GAMMA_CORR_CNTLA_EXP_REGION_END_BASE ;
 int GAMMA_CORR_CNTLA_EXP_REGION_END_SLOPE ;
 int GAMMA_CORR_CNTLA_EXP_REGION_LINEAR_SLOPE ;
 int GAMMA_CORR_CNTLA_EXP_REGION_START ;
 int GAMMA_CORR_CNTLA_EXP_REGION_START_SEGMENT ;
 int GAMMA_CORR_CNTLA_REGION_0_1 ;
 int GAMMA_CORR_CNTLA_REGION_10_11 ;
 int GAMMA_CORR_CNTLA_REGION_12_13 ;
 int GAMMA_CORR_CNTLA_REGION_14_15 ;
 int GAMMA_CORR_CNTLA_REGION_2_3 ;
 int GAMMA_CORR_CNTLA_REGION_4_5 ;
 int GAMMA_CORR_CNTLA_REGION_6_7 ;
 int GAMMA_CORR_CNTLA_REGION_8_9 ;
 int GAMMA_CORR_CNTLA_SLOPE_CNTL ;
 int GAMMA_CORR_CNTLA_START_CNTL ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmGAMMA_CORR_CNTLA_END_CNTL1 ;
 int mmGAMMA_CORR_CNTLA_END_CNTL2 ;
 int mmGAMMA_CORR_CNTLA_REGION_0_1 ;
 int mmGAMMA_CORR_CNTLA_REGION_10_11 ;
 int mmGAMMA_CORR_CNTLA_REGION_12_13 ;
 int mmGAMMA_CORR_CNTLA_REGION_14_15 ;
 int mmGAMMA_CORR_CNTLA_REGION_2_3 ;
 int mmGAMMA_CORR_CNTLA_REGION_4_5 ;
 int mmGAMMA_CORR_CNTLA_REGION_6_7 ;
 int mmGAMMA_CORR_CNTLA_REGION_8_9 ;
 int mmGAMMA_CORR_CNTLA_SLOPE_CNTL ;
 int mmGAMMA_CORR_CNTLA_START_CNTL ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void regamma_config_regions_and_segments(
 struct dce_transform *xfm_dce, const struct pwl_params *params)
{
 const struct gamma_curve *curve;
 uint32_t value = 0;

 {
  set_reg_field_value(
   value,
   params->arr_points[0].custom_float_x,
   GAMMA_CORR_CNTLA_START_CNTL,
   GAMMA_CORR_CNTLA_EXP_REGION_START);

  set_reg_field_value(
   value,
   0,
   GAMMA_CORR_CNTLA_START_CNTL,
   GAMMA_CORR_CNTLA_EXP_REGION_START_SEGMENT);

  dm_write_reg(xfm_dce->base.ctx, mmGAMMA_CORR_CNTLA_START_CNTL,
    value);
 }
 {
  value = 0;
  set_reg_field_value(
   value,
   params->arr_points[0].custom_float_slope,
   GAMMA_CORR_CNTLA_SLOPE_CNTL,
   GAMMA_CORR_CNTLA_EXP_REGION_LINEAR_SLOPE);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_SLOPE_CNTL, value);
 }
 {
  value = 0;
  set_reg_field_value(
   value,
   params->arr_points[1].custom_float_x,
   GAMMA_CORR_CNTLA_END_CNTL1,
   GAMMA_CORR_CNTLA_EXP_REGION_END);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_END_CNTL1, value);
 }
 {
  value = 0;
  set_reg_field_value(
   value,
   params->arr_points[1].custom_float_slope,
   GAMMA_CORR_CNTLA_END_CNTL2,
   GAMMA_CORR_CNTLA_EXP_REGION_END_BASE);

  set_reg_field_value(
   value,
   params->arr_points[1].custom_float_y,
   GAMMA_CORR_CNTLA_END_CNTL2,
   GAMMA_CORR_CNTLA_EXP_REGION_END_SLOPE);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_END_CNTL2, value);
 }

 curve = params->arr_curve_points;

 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_0_1,
   GAMMA_CORR_CNTLA_EXP_REGION0_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_0_1,
   GAMMA_CORR_CNTLA_EXP_REGION0_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_0_1,
   GAMMA_CORR_CNTLA_EXP_REGION1_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_0_1,
   GAMMA_CORR_CNTLA_EXP_REGION1_NUM_SEGMENTS);

  dm_write_reg(
    xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_0_1,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_2_3,
   GAMMA_CORR_CNTLA_EXP_REGION2_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_2_3,
   GAMMA_CORR_CNTLA_EXP_REGION2_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_2_3,
   GAMMA_CORR_CNTLA_EXP_REGION3_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_2_3,
   GAMMA_CORR_CNTLA_EXP_REGION3_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_2_3,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_4_5,
   GAMMA_CORR_CNTLA_EXP_REGION4_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_4_5,
   GAMMA_CORR_CNTLA_EXP_REGION4_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_4_5,
   GAMMA_CORR_CNTLA_EXP_REGION5_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_4_5,
   GAMMA_CORR_CNTLA_EXP_REGION5_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_4_5,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_6_7,
   GAMMA_CORR_CNTLA_EXP_REGION6_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_6_7,
   GAMMA_CORR_CNTLA_EXP_REGION6_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_6_7,
   GAMMA_CORR_CNTLA_EXP_REGION7_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_6_7,
   GAMMA_CORR_CNTLA_EXP_REGION7_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_6_7,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_8_9,
   GAMMA_CORR_CNTLA_EXP_REGION8_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_8_9,
   GAMMA_CORR_CNTLA_EXP_REGION8_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_8_9,
   GAMMA_CORR_CNTLA_EXP_REGION9_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_8_9,
   GAMMA_CORR_CNTLA_EXP_REGION9_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_8_9,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_10_11,
   GAMMA_CORR_CNTLA_EXP_REGION10_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_10_11,
   GAMMA_CORR_CNTLA_EXP_REGION10_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_10_11,
   GAMMA_CORR_CNTLA_EXP_REGION11_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_10_11,
   GAMMA_CORR_CNTLA_EXP_REGION11_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_10_11,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_12_13,
   GAMMA_CORR_CNTLA_EXP_REGION12_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_12_13,
   GAMMA_CORR_CNTLA_EXP_REGION12_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_12_13,
   GAMMA_CORR_CNTLA_EXP_REGION13_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_12_13,
   GAMMA_CORR_CNTLA_EXP_REGION13_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_12_13,
   value);
 }

 curve += 2;
 {
  value = 0;
  set_reg_field_value(
   value,
   curve[0].offset,
   GAMMA_CORR_CNTLA_REGION_14_15,
   GAMMA_CORR_CNTLA_EXP_REGION14_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[0].segments_num,
   GAMMA_CORR_CNTLA_REGION_14_15,
   GAMMA_CORR_CNTLA_EXP_REGION14_NUM_SEGMENTS);

  set_reg_field_value(
   value,
   curve[1].offset,
   GAMMA_CORR_CNTLA_REGION_14_15,
   GAMMA_CORR_CNTLA_EXP_REGION15_LUT_OFFSET);

  set_reg_field_value(
   value,
   curve[1].segments_num,
   GAMMA_CORR_CNTLA_REGION_14_15,
   GAMMA_CORR_CNTLA_EXP_REGION15_NUM_SEGMENTS);

  dm_write_reg(xfm_dce->base.ctx,
   mmGAMMA_CORR_CNTLA_REGION_14_15,
   value);
 }
}
