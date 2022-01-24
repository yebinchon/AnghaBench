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
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
typedef  enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CM_SHAPER_CONFIG_STATUS ; 
 int /*<<< orphan*/  CM_SHAPER_LUT_WRITE_EN_MASK ; 
 int LUT_BYPASS ; 
 int LUT_RAM_A ; 
 int LUT_RAM_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 

__attribute__((used)) static enum dc_lut_mode FUNC2(struct dpp *dpp_base)
{
	enum dc_lut_mode mode;
	uint32_t state_mode;
	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	FUNC0(CM_SHAPER_LUT_WRITE_EN_MASK,
			CM_SHAPER_CONFIG_STATUS, &state_mode);

		switch (state_mode) {
		case 0:
			mode = LUT_BYPASS;
			break;
		case 1:
			mode = LUT_RAM_A;
			break;
		case 2:
			mode = LUT_RAM_B;
			break;
		default:
			mode = LUT_BYPASS;
			break;
		}
		return mode;
}