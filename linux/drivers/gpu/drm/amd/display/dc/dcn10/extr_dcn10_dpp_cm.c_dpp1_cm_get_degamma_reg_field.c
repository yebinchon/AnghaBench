
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int exp_resion_start_segment; int exp_region_start; int field_region_linear_slope; int field_region_end_base; int field_region_end_slope; int field_region_end; int exp_region1_num_segments; int exp_region1_lut_offset; int exp_region0_num_segments; int exp_region0_lut_offset; } ;
struct TYPE_5__ {int exp_resion_start_segment; int exp_region_start; int field_region_linear_slope; int field_region_end_base; int field_region_end_slope; int field_region_end; int exp_region1_num_segments; int exp_region1_lut_offset; int exp_region0_num_segments; int exp_region0_lut_offset; } ;
struct xfer_func_reg {TYPE_3__ masks; TYPE_1__ shifts; } ;
struct dcn10_dpp {TYPE_4__* tf_mask; TYPE_2__* tf_shift; } ;
struct TYPE_8__ {int CM_DGAM_RAMB_EXP_REGION_START_SEGMENT_B; int CM_DGAM_RAMB_EXP_REGION_START_B; int CM_DGAM_RAMB_EXP_REGION_LINEAR_SLOPE_B; int CM_DGAM_RAMB_EXP_REGION_END_BASE_B; int CM_DGAM_RAMB_EXP_REGION_END_SLOPE_B; int CM_DGAM_RAMB_EXP_REGION_END_B; int CM_DGAM_RAMA_EXP_REGION1_NUM_SEGMENTS; int CM_DGAM_RAMA_EXP_REGION1_LUT_OFFSET; int CM_DGAM_RAMA_EXP_REGION0_NUM_SEGMENTS; int CM_DGAM_RAMA_EXP_REGION0_LUT_OFFSET; } ;
struct TYPE_6__ {int CM_DGAM_RAMB_EXP_REGION_START_SEGMENT_B; int CM_DGAM_RAMB_EXP_REGION_START_B; int CM_DGAM_RAMB_EXP_REGION_LINEAR_SLOPE_B; int CM_DGAM_RAMB_EXP_REGION_END_BASE_B; int CM_DGAM_RAMB_EXP_REGION_END_SLOPE_B; int CM_DGAM_RAMB_EXP_REGION_END_B; int CM_DGAM_RAMA_EXP_REGION1_NUM_SEGMENTS; int CM_DGAM_RAMA_EXP_REGION1_LUT_OFFSET; int CM_DGAM_RAMA_EXP_REGION0_NUM_SEGMENTS; int CM_DGAM_RAMA_EXP_REGION0_LUT_OFFSET; } ;



__attribute__((used)) static void dpp1_cm_get_degamma_reg_field(
  struct dcn10_dpp *dpp,
  struct xfer_func_reg *reg)
{
 reg->shifts.exp_region0_lut_offset = dpp->tf_shift->CM_DGAM_RAMA_EXP_REGION0_LUT_OFFSET;
 reg->masks.exp_region0_lut_offset = dpp->tf_mask->CM_DGAM_RAMA_EXP_REGION0_LUT_OFFSET;
 reg->shifts.exp_region0_num_segments = dpp->tf_shift->CM_DGAM_RAMA_EXP_REGION0_NUM_SEGMENTS;
 reg->masks.exp_region0_num_segments = dpp->tf_mask->CM_DGAM_RAMA_EXP_REGION0_NUM_SEGMENTS;
 reg->shifts.exp_region1_lut_offset = dpp->tf_shift->CM_DGAM_RAMA_EXP_REGION1_LUT_OFFSET;
 reg->masks.exp_region1_lut_offset = dpp->tf_mask->CM_DGAM_RAMA_EXP_REGION1_LUT_OFFSET;
 reg->shifts.exp_region1_num_segments = dpp->tf_shift->CM_DGAM_RAMA_EXP_REGION1_NUM_SEGMENTS;
 reg->masks.exp_region1_num_segments = dpp->tf_mask->CM_DGAM_RAMA_EXP_REGION1_NUM_SEGMENTS;

 reg->shifts.field_region_end = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_END_B;
 reg->masks.field_region_end = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_END_B;
 reg->shifts.field_region_end_slope = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_END_SLOPE_B;
 reg->masks.field_region_end_slope = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_END_SLOPE_B;
 reg->shifts.field_region_end_base = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_END_BASE_B;
 reg->masks.field_region_end_base = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_END_BASE_B;
 reg->shifts.field_region_linear_slope = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_LINEAR_SLOPE_B;
 reg->masks.field_region_linear_slope = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_LINEAR_SLOPE_B;
 reg->shifts.exp_region_start = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_START_B;
 reg->masks.exp_region_start = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_START_B;
 reg->shifts.exp_resion_start_segment = dpp->tf_shift->CM_DGAM_RAMB_EXP_REGION_START_SEGMENT_B;
 reg->masks.exp_resion_start_segment = dpp->tf_mask->CM_DGAM_RAMB_EXP_REGION_START_SEGMENT_B;
}
