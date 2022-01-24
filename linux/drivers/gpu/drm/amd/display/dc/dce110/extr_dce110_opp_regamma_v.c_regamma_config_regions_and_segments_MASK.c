#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct pwl_params {struct gamma_curve* arr_curve_points; TYPE_1__* arr_points; } ;
struct gamma_curve {int /*<<< orphan*/  segments_num; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; } ;
struct dce_transform {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  custom_float_y; int /*<<< orphan*/  custom_float_slope; int /*<<< orphan*/  custom_float_x; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_END_CNTL1 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_END_CNTL2 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION0_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION0_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION10_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION10_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION11_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION11_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION12_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION12_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION13_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION13_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION14_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION14_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION15_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION15_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION1_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION1_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION2_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION2_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION3_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION3_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION4_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION4_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION5_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION5_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION6_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION6_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION7_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION7_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION8_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION8_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION9_LUT_OFFSET ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION9_NUM_SEGMENTS ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_END ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_END_BASE ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_END_SLOPE ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_LINEAR_SLOPE ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_START ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_EXP_REGION_START_SEGMENT ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_0_1 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_10_11 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_12_13 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_14_15 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_2_3 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_4_5 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_6_7 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_REGION_8_9 ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_SLOPE_CNTL ; 
 int /*<<< orphan*/  GAMMA_CORR_CNTLA_START_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_END_CNTL1 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_END_CNTL2 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_0_1 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_10_11 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_12_13 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_14_15 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_2_3 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_4_5 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_6_7 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_REGION_8_9 ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_SLOPE_CNTL ; 
 int /*<<< orphan*/  mmGAMMA_CORR_CNTLA_START_CNTL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
	struct dce_transform *xfm_dce, const struct pwl_params *params)
{
	const struct gamma_curve *curve;
	uint32_t value = 0;

	{
		FUNC1(
			value,
			params->arr_points[0].custom_float_x,
			GAMMA_CORR_CNTLA_START_CNTL,
			GAMMA_CORR_CNTLA_EXP_REGION_START);

		FUNC1(
			value,
			0,
			GAMMA_CORR_CNTLA_START_CNTL,
			GAMMA_CORR_CNTLA_EXP_REGION_START_SEGMENT);

		FUNC0(xfm_dce->base.ctx, mmGAMMA_CORR_CNTLA_START_CNTL,
				value);
	}
	{
		value = 0;
		FUNC1(
			value,
			params->arr_points[0].custom_float_slope,
			GAMMA_CORR_CNTLA_SLOPE_CNTL,
			GAMMA_CORR_CNTLA_EXP_REGION_LINEAR_SLOPE);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_SLOPE_CNTL, value);
	}
	{
		value = 0;
		FUNC1(
			value,
			params->arr_points[1].custom_float_x,
			GAMMA_CORR_CNTLA_END_CNTL1,
			GAMMA_CORR_CNTLA_EXP_REGION_END);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_END_CNTL1, value);
	}
	{
		value = 0;
		FUNC1(
			value,
			params->arr_points[1].custom_float_slope,
			GAMMA_CORR_CNTLA_END_CNTL2,
			GAMMA_CORR_CNTLA_EXP_REGION_END_BASE);

		FUNC1(
			value,
			params->arr_points[1].custom_float_y,
			GAMMA_CORR_CNTLA_END_CNTL2,
			GAMMA_CORR_CNTLA_EXP_REGION_END_SLOPE);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_END_CNTL2, value);
	}

	curve = params->arr_curve_points;

	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_0_1,
			GAMMA_CORR_CNTLA_EXP_REGION0_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_0_1,
			GAMMA_CORR_CNTLA_EXP_REGION0_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_0_1,
			GAMMA_CORR_CNTLA_EXP_REGION1_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_0_1,
			GAMMA_CORR_CNTLA_EXP_REGION1_NUM_SEGMENTS);

		FUNC0(
				xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_0_1,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_2_3,
			GAMMA_CORR_CNTLA_EXP_REGION2_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_2_3,
			GAMMA_CORR_CNTLA_EXP_REGION2_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_2_3,
			GAMMA_CORR_CNTLA_EXP_REGION3_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_2_3,
			GAMMA_CORR_CNTLA_EXP_REGION3_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_2_3,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_4_5,
			GAMMA_CORR_CNTLA_EXP_REGION4_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_4_5,
			GAMMA_CORR_CNTLA_EXP_REGION4_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_4_5,
			GAMMA_CORR_CNTLA_EXP_REGION5_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_4_5,
			GAMMA_CORR_CNTLA_EXP_REGION5_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_4_5,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_6_7,
			GAMMA_CORR_CNTLA_EXP_REGION6_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_6_7,
			GAMMA_CORR_CNTLA_EXP_REGION6_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_6_7,
			GAMMA_CORR_CNTLA_EXP_REGION7_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_6_7,
			GAMMA_CORR_CNTLA_EXP_REGION7_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_6_7,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_8_9,
			GAMMA_CORR_CNTLA_EXP_REGION8_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_8_9,
			GAMMA_CORR_CNTLA_EXP_REGION8_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_8_9,
			GAMMA_CORR_CNTLA_EXP_REGION9_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_8_9,
			GAMMA_CORR_CNTLA_EXP_REGION9_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_8_9,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_10_11,
			GAMMA_CORR_CNTLA_EXP_REGION10_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_10_11,
			GAMMA_CORR_CNTLA_EXP_REGION10_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_10_11,
			GAMMA_CORR_CNTLA_EXP_REGION11_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_10_11,
			GAMMA_CORR_CNTLA_EXP_REGION11_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_10_11,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_12_13,
			GAMMA_CORR_CNTLA_EXP_REGION12_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_12_13,
			GAMMA_CORR_CNTLA_EXP_REGION12_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_12_13,
			GAMMA_CORR_CNTLA_EXP_REGION13_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_12_13,
			GAMMA_CORR_CNTLA_EXP_REGION13_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_12_13,
			value);
	}

	curve += 2;
	{
		value = 0;
		FUNC1(
			value,
			curve[0].offset,
			GAMMA_CORR_CNTLA_REGION_14_15,
			GAMMA_CORR_CNTLA_EXP_REGION14_LUT_OFFSET);

		FUNC1(
			value,
			curve[0].segments_num,
			GAMMA_CORR_CNTLA_REGION_14_15,
			GAMMA_CORR_CNTLA_EXP_REGION14_NUM_SEGMENTS);

		FUNC1(
			value,
			curve[1].offset,
			GAMMA_CORR_CNTLA_REGION_14_15,
			GAMMA_CORR_CNTLA_EXP_REGION15_LUT_OFFSET);

		FUNC1(
			value,
			curve[1].segments_num,
			GAMMA_CORR_CNTLA_REGION_14_15,
			GAMMA_CORR_CNTLA_EXP_REGION15_NUM_SEGMENTS);

		FUNC0(xfm_dce->base.ctx,
			mmGAMMA_CORR_CNTLA_REGION_14_15,
			value);
	}
}