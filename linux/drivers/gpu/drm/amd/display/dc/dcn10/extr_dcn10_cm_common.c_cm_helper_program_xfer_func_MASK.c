#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct xfer_func_reg {scalar_t__ region_start; scalar_t__ region_end; int /*<<< orphan*/  start_end_cntl2_r; int /*<<< orphan*/  start_end_cntl1_r; int /*<<< orphan*/  start_end_cntl2_g; int /*<<< orphan*/  start_end_cntl1_g; int /*<<< orphan*/  start_end_cntl2_b; int /*<<< orphan*/  start_end_cntl1_b; int /*<<< orphan*/  start_slope_cntl_r; int /*<<< orphan*/  start_slope_cntl_g; int /*<<< orphan*/  start_slope_cntl_b; int /*<<< orphan*/  start_cntl_r; int /*<<< orphan*/  start_cntl_g; int /*<<< orphan*/  start_cntl_b; } ;
struct pwl_params {struct gamma_curve* arr_curve_points; TYPE_4__* corner_points; } ;
struct gamma_curve {int /*<<< orphan*/  segments_num; int /*<<< orphan*/  offset; } ;
struct dc_context {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  custom_float_y; int /*<<< orphan*/  custom_float_slope; int /*<<< orphan*/  custom_float_x; } ;
struct TYPE_6__ {int /*<<< orphan*/  custom_float_y; int /*<<< orphan*/  custom_float_slope; int /*<<< orphan*/  custom_float_x; } ;
struct TYPE_5__ {int /*<<< orphan*/  custom_float_y; int /*<<< orphan*/  custom_float_slope; int /*<<< orphan*/  custom_float_x; } ;
struct TYPE_8__ {TYPE_3__ red; TYPE_2__ green; TYPE_1__ blue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exp_region0_lut_offset ; 
 int /*<<< orphan*/  exp_region0_num_segments ; 
 int /*<<< orphan*/  exp_region1_lut_offset ; 
 int /*<<< orphan*/  exp_region1_num_segments ; 
 int /*<<< orphan*/  exp_region_start ; 
 int /*<<< orphan*/  exp_resion_start_segment ; 
 int /*<<< orphan*/  field_region_end ; 
 int /*<<< orphan*/  field_region_end_base ; 
 int /*<<< orphan*/  field_region_end_slope ; 
 int /*<<< orphan*/  field_region_linear_slope ; 

void FUNC3(
		struct dc_context *ctx,
		const struct pwl_params *params,
		const struct xfer_func_reg *reg)
{
	uint32_t reg_region_cur;
	unsigned int i = 0;

	FUNC1(reg->start_cntl_b, 0,
			exp_region_start, params->corner_points[0].blue.custom_float_x,
			exp_resion_start_segment, 0);
	FUNC1(reg->start_cntl_g, 0,
			exp_region_start, params->corner_points[0].green.custom_float_x,
			exp_resion_start_segment, 0);
	FUNC1(reg->start_cntl_r, 0,
			exp_region_start, params->corner_points[0].red.custom_float_x,
			exp_resion_start_segment, 0);

	FUNC0(reg->start_slope_cntl_b, 0,
			field_region_linear_slope, params->corner_points[0].blue.custom_float_slope);
	FUNC0(reg->start_slope_cntl_g, 0,
			field_region_linear_slope, params->corner_points[0].green.custom_float_slope);
	FUNC0(reg->start_slope_cntl_r, 0,
			field_region_linear_slope, params->corner_points[0].red.custom_float_slope);

	FUNC0(reg->start_end_cntl1_b, 0,
			field_region_end, params->corner_points[1].blue.custom_float_x);
	FUNC1(reg->start_end_cntl2_b, 0,
			field_region_end_slope, params->corner_points[1].blue.custom_float_slope,
			field_region_end_base, params->corner_points[1].blue.custom_float_y);

	FUNC0(reg->start_end_cntl1_g, 0,
			field_region_end, params->corner_points[1].green.custom_float_x);
	FUNC1(reg->start_end_cntl2_g, 0,
			field_region_end_slope, params->corner_points[1].green.custom_float_slope,
		field_region_end_base, params->corner_points[1].green.custom_float_y);

	FUNC0(reg->start_end_cntl1_r, 0,
			field_region_end, params->corner_points[1].red.custom_float_x);
	FUNC1(reg->start_end_cntl2_r, 0,
			field_region_end_slope, params->corner_points[1].red.custom_float_slope,
		field_region_end_base, params->corner_points[1].red.custom_float_y);

	for (reg_region_cur = reg->region_start;
			reg_region_cur <= reg->region_end;
			reg_region_cur++) {

		const struct gamma_curve *curve0 = &(params->arr_curve_points[2 * i]);
		const struct gamma_curve *curve1 = &(params->arr_curve_points[(2 * i) + 1]);

		FUNC2(reg_region_cur, 0,
				exp_region0_lut_offset, curve0->offset,
				exp_region0_num_segments, curve0->segments_num,
				exp_region1_lut_offset, curve1->offset,
				exp_region1_num_segments, curve1->segments_num);

		i++;
	}

}