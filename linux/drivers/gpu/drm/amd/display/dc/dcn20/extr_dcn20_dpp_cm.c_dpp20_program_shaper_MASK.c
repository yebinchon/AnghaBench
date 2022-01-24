#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pwl_params {int /*<<< orphan*/  hw_points_num; int /*<<< orphan*/  rgb_resulted; } ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef  enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CM_SHAPER_CONTROL ; 
 int /*<<< orphan*/  CM_SHAPER_LUT_MODE ; 
 int LUT_BYPASS ; 
 int LUT_RAM_A ; 
 int LUT_RAM_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp*,int) ; 
 int FUNC3 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpp*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp*,struct pwl_params const*) ; 

bool FUNC7(
		struct dpp *dpp_base,
		const struct pwl_params *params)
{
	enum dc_lut_mode current_mode;
	enum dc_lut_mode next_mode;

	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	if (params == NULL) {
		FUNC0(CM_SHAPER_CONTROL, 0, CM_SHAPER_LUT_MODE, 0);
		return false;
	}
	current_mode = FUNC3(dpp_base);

	if (current_mode == LUT_BYPASS || current_mode == LUT_RAM_A)
		next_mode = LUT_RAM_B;
	else
		next_mode = LUT_RAM_A;

	FUNC2(dpp_base, next_mode == LUT_RAM_A ? true:false);

	if (next_mode == LUT_RAM_A)
		FUNC5(dpp_base, params);
	else
		FUNC6(dpp_base, params);

	FUNC4(
			dpp_base, params->rgb_resulted, params->hw_points_num);

	FUNC0(CM_SHAPER_CONTROL, 0, CM_SHAPER_LUT_MODE, next_mode == LUT_RAM_A ? 1:2);

	return true;

}