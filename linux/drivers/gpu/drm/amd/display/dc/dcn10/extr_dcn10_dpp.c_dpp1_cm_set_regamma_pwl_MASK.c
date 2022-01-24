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
typedef  int uint32_t ;
struct pwl_params {int /*<<< orphan*/  hw_points_num; int /*<<< orphan*/  rgb_resulted; } ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int is_write_to_ram_a_safe; struct pwl_params pwl_data; } ;
typedef  enum opp_regamma { ____Placeholder_opp_regamma } opp_regamma ;

/* Variables and functions */
 int /*<<< orphan*/  CM_RGAM_CONTROL ; 
 int /*<<< orphan*/  CM_RGAM_LUT_MODE ; 
#define  OPP_REGAMMA_BYPASS 131 
#define  OPP_REGAMMA_SRGB 130 
#define  OPP_REGAMMA_USER 129 
#define  OPP_REGAMMA_XVYCC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_dpp* FUNC1 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpp*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpp*,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwl_params*,struct pwl_params const*,int) ; 

__attribute__((used)) static void FUNC8(
	struct dpp *dpp_base, const struct pwl_params *params, enum opp_regamma mode)
{
	struct dcn10_dpp *dpp = FUNC1(dpp_base);
	uint32_t re_mode = 0;

	switch (mode) {
	case OPP_REGAMMA_BYPASS:
		re_mode = 0;
		break;
	case OPP_REGAMMA_SRGB:
		re_mode = 1;
		break;
	case OPP_REGAMMA_XVYCC:
		re_mode = 2;
		break;
	case OPP_REGAMMA_USER:
		re_mode = dpp->is_write_to_ram_a_safe ? 4 : 3;
		if (FUNC7(&dpp->pwl_data, params, sizeof(*params)) == 0)
			break;

		FUNC3(dpp_base, true);
		FUNC2(dpp_base, dpp->is_write_to_ram_a_safe);

		if (dpp->is_write_to_ram_a_safe)
			FUNC5(dpp_base, params);
		else
			FUNC6(dpp_base, params);

		FUNC4(dpp_base, params->rgb_resulted,
					    params->hw_points_num);
		dpp->pwl_data = *params;

		re_mode = dpp->is_write_to_ram_a_safe ? 3 : 4;
		dpp->is_write_to_ram_a_safe = !dpp->is_write_to_ram_a_safe;
		break;
	default:
		break;
	}
	FUNC0(CM_RGAM_CONTROL, 0, CM_RGAM_LUT_MODE, re_mode);
}