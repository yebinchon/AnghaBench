
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwl_params {struct gamma_curve* arr_curve_points; TYPE_1__* arr_points; } ;
struct gamma_curve {int segments_num; int offset; } ;
struct dce_transform {int dummy; } ;
struct TYPE_2__ {int custom_float_slope; int custom_float_y; int custom_float_x; } ;


 int REGAMMA_CNTLA_END_CNTL1 ;
 int REGAMMA_CNTLA_END_CNTL2 ;
 int REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET ;
 int REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS ;
 int REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET ;
 int REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS ;
 int REGAMMA_CNTLA_EXP_REGION_END ;
 int REGAMMA_CNTLA_EXP_REGION_END_BASE ;
 int REGAMMA_CNTLA_EXP_REGION_END_SLOPE ;
 int REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE ;
 int REGAMMA_CNTLA_EXP_REGION_START ;
 int REGAMMA_CNTLA_EXP_REGION_START_SEGMENT ;
 int REGAMMA_CNTLA_REGION_0_1 ;
 int REGAMMA_CNTLA_REGION_10_11 ;
 int REGAMMA_CNTLA_REGION_12_13 ;
 int REGAMMA_CNTLA_REGION_14_15 ;
 int REGAMMA_CNTLA_REGION_2_3 ;
 int REGAMMA_CNTLA_REGION_4_5 ;
 int REGAMMA_CNTLA_REGION_6_7 ;
 int REGAMMA_CNTLA_REGION_8_9 ;
 int REGAMMA_CNTLA_SLOPE_CNTL ;
 int REGAMMA_CNTLA_START_CNTL ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_SET_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void regamma_config_regions_and_segments(struct dce_transform *xfm_dce,
      const struct pwl_params *params)
{
 const struct gamma_curve *curve;

 REG_SET_2(REGAMMA_CNTLA_START_CNTL, 0,
    REGAMMA_CNTLA_EXP_REGION_START, params->arr_points[0].custom_float_x,
    REGAMMA_CNTLA_EXP_REGION_START_SEGMENT, 0);

 REG_SET(REGAMMA_CNTLA_SLOPE_CNTL, 0,
  REGAMMA_CNTLA_EXP_REGION_LINEAR_SLOPE, params->arr_points[0].custom_float_slope);

 REG_SET(REGAMMA_CNTLA_END_CNTL1, 0,
  REGAMMA_CNTLA_EXP_REGION_END, params->arr_points[1].custom_float_x);

 REG_SET_2(REGAMMA_CNTLA_END_CNTL2, 0,
    REGAMMA_CNTLA_EXP_REGION_END_BASE, params->arr_points[1].custom_float_y,
    REGAMMA_CNTLA_EXP_REGION_END_SLOPE, params->arr_points[1].custom_float_slope);

 curve = params->arr_curve_points;

 REG_SET_4(REGAMMA_CNTLA_REGION_0_1, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_2_3, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_4_5, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_6_7, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_8_9, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_10_11, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_12_13, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
 curve += 2;

 REG_SET_4(REGAMMA_CNTLA_REGION_14_15, 0,
    REGAMMA_CNTLA_EXP_REGION0_LUT_OFFSET, curve[0].offset,
    REGAMMA_CNTLA_EXP_REGION0_NUM_SEGMENTS, curve[0].segments_num,
    REGAMMA_CNTLA_EXP_REGION1_LUT_OFFSET, curve[1].offset,
    REGAMMA_CNTLA_EXP_REGION1_NUM_SEGMENTS, curve[1].segments_num);
}
