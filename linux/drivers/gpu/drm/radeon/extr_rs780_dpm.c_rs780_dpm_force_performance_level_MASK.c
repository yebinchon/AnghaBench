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
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int forced_level; struct radeon_ps* current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct igp_ps {scalar_t__ sclk_high; scalar_t__ sclk_low; } ;
struct igp_power_info {scalar_t__ voltage_control; int /*<<< orphan*/  max_voltage; int /*<<< orphan*/  min_voltage; } ;
struct atom_clock_dividers {int /*<<< orphan*/  fb_div; } ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;

/* Variables and functions */
 int /*<<< orphan*/  COMPUTE_ENGINE_PLL_PARAM ; 
 int /*<<< orphan*/  FORCE_FEEDBACK_DIV ; 
 int /*<<< orphan*/  FVTHROT_FBDIV_REG1 ; 
 int RADEON_DPM_FORCED_LEVEL_HIGH ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__,int,struct atom_clock_dividers*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct igp_power_info* FUNC6 (struct radeon_device*) ; 
 struct igp_ps* FUNC7 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 

int FUNC9(struct radeon_device *rdev,
				      enum radeon_dpm_forced_level level)
{
	struct igp_power_info *pi = FUNC6(rdev);
	struct radeon_ps *rps = rdev->pm.dpm.current_ps;
	struct igp_ps *ps = FUNC7(rps);
	struct atom_clock_dividers dividers;
	int ret;

	FUNC2(rdev, false);
	FUNC8(rdev, false);

	if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
		if (pi->voltage_control)
			FUNC5(rdev, pi->max_voltage);

		ret = FUNC1(rdev, COMPUTE_ENGINE_PLL_PARAM,
						     ps->sclk_high, false, &dividers);
		if (ret)
			return ret;

		FUNC4(rdev, dividers.fb_div);
	} else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
		ret = FUNC1(rdev, COMPUTE_ENGINE_PLL_PARAM,
						     ps->sclk_low, false, &dividers);
		if (ret)
			return ret;

		FUNC4(rdev, dividers.fb_div);

		if (pi->voltage_control)
			FUNC5(rdev, pi->min_voltage);
	} else {
		if (pi->voltage_control)
			FUNC5(rdev, pi->max_voltage);

		if (ps->sclk_high != ps->sclk_low) {
			FUNC0(FVTHROT_FBDIV_REG1, 0, ~FORCE_FEEDBACK_DIV);
			FUNC2(rdev, true);
		}

		if (pi->voltage_control) {
			FUNC8(rdev, true);
			FUNC3(rdev, rps);
		}
	}

	rdev->pm.dpm.forced_level = level;

	return 0;
}