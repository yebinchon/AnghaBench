#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct transform {int dummy; } ;
struct scl_ratios_inits {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int alpha_en; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_taps; int /*<<< orphan*/  v_taps; } ;
struct TYPE_4__ {int /*<<< orphan*/  horz; int /*<<< orphan*/  vert; } ;
struct scaler_data {TYPE_3__ lb_params; int /*<<< orphan*/  viewport; TYPE_2__ taps; TYPE_1__ ratios; } ;
struct dce_transform {int /*<<< orphan*/  const* filter_h; int /*<<< orphan*/  const* filter_v; int /*<<< orphan*/  lb_memory_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_EN ; 
 int /*<<< orphan*/  FILTER_TYPE_ALPHA_HORIZONTAL ; 
 int /*<<< orphan*/  FILTER_TYPE_ALPHA_VERTICAL ; 
 int /*<<< orphan*/  FILTER_TYPE_RGB_Y_HORIZONTAL ; 
 int /*<<< orphan*/  FILTER_TYPE_RGB_Y_VERTICAL ; 
 int /*<<< orphan*/  LB_DATA_FORMAT ; 
 int /*<<< orphan*/  LB_MEMORY_CONFIG ; 
 int /*<<< orphan*/  LB_MEMORY_CTRL ; 
 int /*<<< orphan*/  LB_MEMORY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCL_COEF_UPDATE_COMPLETE ; 
 int /*<<< orphan*/  SCL_F_SHARP_CONTROL ; 
 int /*<<< orphan*/  SCL_HORZ_FILTER_CONTROL ; 
 int /*<<< orphan*/  SCL_H_2TAP_HARDCODE_COEF_EN ; 
 int /*<<< orphan*/  SCL_UPDATE ; 
 int /*<<< orphan*/  SCL_VERT_FILTER_CONTROL ; 
 int /*<<< orphan*/  SCL_V_2TAP_HARDCODE_COEF_EN ; 
 struct dce_transform* FUNC4 (struct transform*) ; 
 int /*<<< orphan*/  FUNC5 (struct dce_transform*,struct scaler_data const*,struct scl_ratios_inits*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dce_transform*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dce_transform*,struct scaler_data const*) ; 
 int /*<<< orphan*/  FUNC9 (struct dce_transform*,struct scl_ratios_inits*) ; 
 int /*<<< orphan*/  FUNC10 (struct dce_transform*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct dce_transform*,struct scaler_data const*) ; 

__attribute__((used)) static void FUNC12(
	struct transform *xfm,
	const struct scaler_data *data)
{
	struct dce_transform *xfm_dce = FUNC4(xfm);
	bool is_scaling_required;
	bool filter_updated = false;
	const uint16_t *coeffs_v, *coeffs_h;

	/*Use all three pieces of memory always*/
	FUNC1(LB_MEMORY_CTRL, 0,
			LB_MEMORY_CONFIG, 0,
			LB_MEMORY_SIZE, xfm_dce->lb_memory_size);

	/* Clear SCL_F_SHARP_CONTROL value to 0 */
	FUNC3(SCL_F_SHARP_CONTROL, 0);

	/* 1. Program overscan */
	FUNC8(xfm_dce, data);

	/* 2. Program taps and configuration */
	is_scaling_required = FUNC11(xfm_dce, data);

	if (is_scaling_required) {
		/* 3. Calculate and program ratio, filter initialization */
		struct scl_ratios_inits inits = { 0 };

		FUNC5(xfm_dce, data, &inits);

		FUNC9(xfm_dce, &inits);

		coeffs_v = FUNC6(data->taps.v_taps, data->ratios.vert);
		coeffs_h = FUNC6(data->taps.h_taps, data->ratios.horz);

		if (coeffs_v != xfm_dce->filter_v || coeffs_h != xfm_dce->filter_h) {
			/* 4. Program vertical filters */
			if (xfm_dce->filter_v == NULL)
				FUNC0(SCL_VERT_FILTER_CONTROL, 0,
						SCL_V_2TAP_HARDCODE_COEF_EN, 0);
			FUNC7(
					xfm_dce,
					data->taps.v_taps,
					coeffs_v,
					FILTER_TYPE_RGB_Y_VERTICAL);
			FUNC7(
					xfm_dce,
					data->taps.v_taps,
					coeffs_v,
					FILTER_TYPE_ALPHA_VERTICAL);

			/* 5. Program horizontal filters */
			if (xfm_dce->filter_h == NULL)
				FUNC0(SCL_HORZ_FILTER_CONTROL, 0,
						SCL_H_2TAP_HARDCODE_COEF_EN, 0);
			FUNC7(
					xfm_dce,
					data->taps.h_taps,
					coeffs_h,
					FILTER_TYPE_RGB_Y_HORIZONTAL);
			FUNC7(
					xfm_dce,
					data->taps.h_taps,
					coeffs_h,
					FILTER_TYPE_ALPHA_HORIZONTAL);

			xfm_dce->filter_v = coeffs_v;
			xfm_dce->filter_h = coeffs_h;
			filter_updated = true;
		}
	}

	/* 6. Program the viewport */
	FUNC10(xfm_dce, &data->viewport);

	/* 7. Set bit to flip to new coefficient memory */
	if (filter_updated)
		FUNC2(SCL_UPDATE, SCL_COEF_UPDATE_COMPLETE, 1);

	FUNC2(LB_DATA_FORMAT, ALPHA_EN, data->lb_params.alpha_en);
}