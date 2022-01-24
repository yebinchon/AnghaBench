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
struct dcn10_dpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_DGAM_LUT_DATA ; 
 int /*<<< orphan*/  CM_DGAM_LUT_INDEX ; 
 int /*<<< orphan*/  CM_DGAM_LUT_WRITE_EN_MASK ; 
 int /*<<< orphan*/  CM_DGAM_LUT_WRITE_SEL ; 
 int /*<<< orphan*/  CM_IGAM_LUT_HOST_EN ; 
 int /*<<< orphan*/  CM_IGAM_LUT_RW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_dpp* FUNC2 (struct dpp*) ; 

void FUNC3(
		struct dpp *dpp_base,
		const struct pwl_result_data *rgb,
		uint32_t num,
		bool is_ram_a)
{
	uint32_t i;

	struct dcn10_dpp *dpp = FUNC2(dpp_base);
	FUNC1(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_HOST_EN, 0);
	FUNC1(CM_DGAM_LUT_WRITE_EN_MASK,
				   CM_DGAM_LUT_WRITE_EN_MASK, 7);
	FUNC1(CM_DGAM_LUT_WRITE_EN_MASK, CM_DGAM_LUT_WRITE_SEL,
					is_ram_a == true ? 0:1);

	FUNC0(CM_DGAM_LUT_INDEX, 0, CM_DGAM_LUT_INDEX, 0);
	for (i = 0 ; i < num; i++) {
		FUNC0(CM_DGAM_LUT_DATA, 0, CM_DGAM_LUT_DATA, rgb[i].red_reg);
		FUNC0(CM_DGAM_LUT_DATA, 0, CM_DGAM_LUT_DATA, rgb[i].green_reg);
		FUNC0(CM_DGAM_LUT_DATA, 0, CM_DGAM_LUT_DATA, rgb[i].blue_reg);

		FUNC0(CM_DGAM_LUT_DATA, 0,
				CM_DGAM_LUT_DATA, rgb[i].delta_red_reg);
		FUNC0(CM_DGAM_LUT_DATA, 0,
				CM_DGAM_LUT_DATA, rgb[i].delta_green_reg);
		FUNC0(CM_DGAM_LUT_DATA, 0,
				CM_DGAM_LUT_DATA, rgb[i].delta_blue_reg);
	}
}