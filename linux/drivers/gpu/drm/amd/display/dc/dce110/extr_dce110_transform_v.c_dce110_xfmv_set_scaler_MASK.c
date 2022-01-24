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
typedef  int /*<<< orphan*/  uint16_t ;
struct transform {int dummy; } ;
struct sclv_ratios_inits {int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_taps_c; int /*<<< orphan*/  h_taps; int /*<<< orphan*/  v_taps_c; int /*<<< orphan*/  v_taps; } ;
struct TYPE_3__ {int /*<<< orphan*/  horz_c; int /*<<< orphan*/  vert_c; int /*<<< orphan*/  horz; int /*<<< orphan*/  vert; } ;
struct scaler_data {TYPE_2__ taps; TYPE_1__ ratios; } ;
struct rect {int /*<<< orphan*/  member_0; } ;
struct dce_transform {int /*<<< orphan*/  const* filter_h_c; int /*<<< orphan*/  const* filter_h; int /*<<< orphan*/  const* filter_v_c; int /*<<< orphan*/  const* filter_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_TYPE_CBCR_HORIZONTAL ; 
 int /*<<< orphan*/  FILTER_TYPE_CBCR_VERTICAL ; 
 int /*<<< orphan*/  FILTER_TYPE_RGB_Y_HORIZONTAL ; 
 int /*<<< orphan*/  FILTER_TYPE_RGB_Y_VERTICAL ; 
 struct dce_transform* FUNC0 (struct transform*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce_transform*,struct scaler_data const*,struct sclv_ratios_inits*,struct rect*,struct rect*) ; 
 int /*<<< orphan*/  FUNC2 (struct scaler_data const*,struct rect*,struct rect*) ; 
 int /*<<< orphan*/  FUNC3 (struct transform*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dce_transform*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dce_transform*,struct scaler_data const*) ; 
 int /*<<< orphan*/  FUNC7 (struct dce_transform*,struct sclv_ratios_inits*) ; 
 int /*<<< orphan*/  FUNC8 (struct dce_transform*,struct rect*,struct rect*) ; 
 int /*<<< orphan*/  FUNC9 (struct dce_transform*) ; 
 int FUNC10 (struct dce_transform*,struct scaler_data const*) ; 

__attribute__((used)) static void FUNC11(
	struct transform *xfm,
	const struct scaler_data *data)
{
	struct dce_transform *xfm_dce = FUNC0(xfm);
	bool is_scaling_required = false;
	bool filter_updated = false;
	const uint16_t *coeffs_v, *coeffs_h, *coeffs_h_c, *coeffs_v_c;
	struct rect luma_viewport = {0};
	struct rect chroma_viewport = {0};

	FUNC3(xfm);
	/* 1. Calculate viewport, viewport programming should happen after init
	 * calculations as they may require an adjustment in the viewport.
	 */

	FUNC2(data, &luma_viewport, &chroma_viewport);

	/* 2. Program overscan */
	FUNC6(xfm_dce, data);

	/* 3. Program taps and configuration */
	is_scaling_required = FUNC10(xfm_dce, data);

	if (is_scaling_required) {
		/* 4. Calculate and program ratio, filter initialization */

		struct sclv_ratios_inits inits = { 0 };

		FUNC1(
			xfm_dce,
			data,
			&inits,
			&luma_viewport,
			&chroma_viewport);

		FUNC7(xfm_dce, &inits);

		coeffs_v = FUNC4(data->taps.v_taps, data->ratios.vert);
		coeffs_h = FUNC4(data->taps.h_taps, data->ratios.horz);
		coeffs_v_c = FUNC4(data->taps.v_taps_c, data->ratios.vert_c);
		coeffs_h_c = FUNC4(data->taps.h_taps_c, data->ratios.horz_c);

		if (coeffs_v != xfm_dce->filter_v
				|| coeffs_v_c != xfm_dce->filter_v_c
				|| coeffs_h != xfm_dce->filter_h
				|| coeffs_h_c != xfm_dce->filter_h_c) {
		/* 5. Program vertical filters */
			FUNC5(
					xfm_dce,
					data->taps.v_taps,
					coeffs_v,
					FILTER_TYPE_RGB_Y_VERTICAL);
			FUNC5(
					xfm_dce,
					data->taps.v_taps_c,
					coeffs_v_c,
					FILTER_TYPE_CBCR_VERTICAL);

		/* 6. Program horizontal filters */
			FUNC5(
					xfm_dce,
					data->taps.h_taps,
					coeffs_h,
					FILTER_TYPE_RGB_Y_HORIZONTAL);
			FUNC5(
					xfm_dce,
					data->taps.h_taps_c,
					coeffs_h_c,
					FILTER_TYPE_CBCR_HORIZONTAL);

			xfm_dce->filter_v = coeffs_v;
			xfm_dce->filter_v_c = coeffs_v_c;
			xfm_dce->filter_h = coeffs_h;
			xfm_dce->filter_h_c = coeffs_h_c;
			filter_updated = true;
		}
	}

	/* 7. Program the viewport */
	FUNC8(xfm_dce, &luma_viewport, &chroma_viewport);

	/* 8. Set bit to flip to new coefficient memory */
	if (filter_updated)
		FUNC9(xfm_dce);
}