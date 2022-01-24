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
typedef  size_t uint32_t ;
struct pwl_result_data {int /*<<< orphan*/  delta_blue_reg; int /*<<< orphan*/  delta_green_reg; int /*<<< orphan*/  delta_red_reg; int /*<<< orphan*/  blue_reg; int /*<<< orphan*/  green_reg; int /*<<< orphan*/  red_reg; } ;
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_BLNDGAM_LUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 

__attribute__((used)) static void FUNC2(
		struct dpp *dpp_base,
		const struct pwl_result_data *rgb,
		uint32_t num)
{
	uint32_t i;
	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	for (i = 0 ; i < num; i++) {
		FUNC0(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].red_reg);
		FUNC0(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].green_reg);
		FUNC0(CM_BLNDGAM_LUT_DATA, 0, CM_BLNDGAM_LUT_DATA, rgb[i].blue_reg);

		FUNC0(CM_BLNDGAM_LUT_DATA, 0,
				CM_BLNDGAM_LUT_DATA, rgb[i].delta_red_reg);
		FUNC0(CM_BLNDGAM_LUT_DATA, 0,
				CM_BLNDGAM_LUT_DATA, rgb[i].delta_green_reg);
		FUNC0(CM_BLNDGAM_LUT_DATA, 0,
				CM_BLNDGAM_LUT_DATA, rgb[i].delta_blue_reg);

	}

}