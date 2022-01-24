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
struct TYPE_4__ {int h_taps; int v_taps; int h_taps_c; int v_taps_c; } ;
struct scaler_data {scalar_t__ format; TYPE_2__ taps; } ;
struct TYPE_3__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ PIXEL_FORMAT_420BPP8 ; 
 int /*<<< orphan*/  SCLV_CONTROL ; 
 int /*<<< orphan*/  SCLV_MODE ; 
 int /*<<< orphan*/  SCLV_TAP_CONTROL ; 
 int /*<<< orphan*/  SCL_BOUNDARY_MODE ; 
 int /*<<< orphan*/  SCL_H_NUM_OF_TAPS ; 
 int /*<<< orphan*/  SCL_H_NUM_OF_TAPS_C ; 
 int /*<<< orphan*/  SCL_MODE ; 
 int /*<<< orphan*/  SCL_MODE_C ; 
 int /*<<< orphan*/  SCL_PSCL_EN ; 
 int /*<<< orphan*/  SCL_PSCL_EN_C ; 
 int /*<<< orphan*/  SCL_V_NUM_OF_TAPS ; 
 int /*<<< orphan*/  SCL_V_NUM_OF_TAPS_C ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSCLV_CONTROL ; 
 int /*<<< orphan*/  mmSCLV_MODE ; 
 int /*<<< orphan*/  mmSCLV_TAP_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
	struct dce_transform *xfm_dce,
	const struct scaler_data *data)
{
	bool is_scaling_needed = false;
	struct dc_context *ctx = xfm_dce->base.ctx;
	uint32_t value = 0;

	FUNC2(value, data->taps.h_taps - 1,
			SCLV_TAP_CONTROL, SCL_H_NUM_OF_TAPS);
	FUNC2(value, data->taps.v_taps - 1,
			SCLV_TAP_CONTROL, SCL_V_NUM_OF_TAPS);
	FUNC2(value, data->taps.h_taps_c - 1,
			SCLV_TAP_CONTROL, SCL_H_NUM_OF_TAPS_C);
	FUNC2(value, data->taps.v_taps_c - 1,
			SCLV_TAP_CONTROL, SCL_V_NUM_OF_TAPS_C);
	FUNC0(ctx, mmSCLV_TAP_CONTROL, value);

	value = 0;
	if (data->taps.h_taps + data->taps.v_taps > 2) {
		FUNC2(value, 1, SCLV_MODE, SCL_MODE);
		FUNC2(value, 1, SCLV_MODE, SCL_PSCL_EN);
		is_scaling_needed = true;
	} else {
		FUNC2(value, 0, SCLV_MODE, SCL_MODE);
		FUNC2(value, 0, SCLV_MODE, SCL_PSCL_EN);
	}

	if (data->taps.h_taps_c + data->taps.v_taps_c > 2) {
		FUNC2(value, 1, SCLV_MODE, SCL_MODE_C);
		FUNC2(value, 1, SCLV_MODE, SCL_PSCL_EN_C);
		is_scaling_needed = true;
	} else if (data->format != PIXEL_FORMAT_420BPP8) {
		FUNC2(
			value,
			FUNC1(value, SCLV_MODE, SCL_MODE),
			SCLV_MODE,
			SCL_MODE_C);
		FUNC2(
			value,
			FUNC1(value, SCLV_MODE, SCL_PSCL_EN),
			SCLV_MODE,
			SCL_PSCL_EN_C);
	} else {
		FUNC2(value, 0, SCLV_MODE, SCL_MODE_C);
		FUNC2(value, 0, SCLV_MODE, SCL_PSCL_EN_C);
	}
	FUNC0(ctx, mmSCLV_MODE, value);

	value = 0;
	/*
	 * 0 - Replaced out of bound pixels with black pixel
	 * (or any other required color)
	 * 1 - Replaced out of bound pixels with the edge pixel
	 */
	FUNC2(value, 1, SCLV_CONTROL, SCL_BOUNDARY_MODE);
	FUNC0(ctx, mmSCLV_CONTROL, value);

	return is_scaling_needed;
}