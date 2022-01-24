#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct radeon_ps {int caps; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; TYPE_7__* performance_levels; } ;
struct ni_power_info {int enable_power_containment; int enable_sq_ramping; } ;
struct evergreen_power_info {scalar_t__ dynamic_ac_timing; } ;
struct TYPE_11__ {scalar_t__ ACIndex; void* displayWatermark; scalar_t__ arbRefreshState; } ;
struct TYPE_10__ {int sclk; } ;
struct TYPE_9__ {scalar_t__ levelCount; TYPE_8__* levels; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ NISLANDS_SMC_SWSTATE ;

/* Variables and functions */
 int ATOM_PPLIB_DISALLOW_ON_DC ; 
 int EINVAL ; 
 scalar_t__ NISLANDS_DRIVER_STATE_ARB_INDEX ; 
 int NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE ; 
 scalar_t__ NISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT ; 
 int /*<<< orphan*/  NI_SMC_SOFT_REGISTER_watermark_threshold ; 
 void* PPSMC_DISPLAY_WATERMARK_HIGH ; 
 void* PPSMC_DISPLAY_WATERMARK_LOW ; 
 int /*<<< orphan*/  PPSMC_SWSTATE_FLAG_DC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,TYPE_7__*,TYPE_8__*) ; 
 struct ni_power_info* FUNC3 (struct radeon_device*) ; 
 struct ni_ps* FUNC4 (struct radeon_ps*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 
 int FUNC7 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 
 int FUNC8 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct radeon_device *rdev,
					 struct radeon_ps *radeon_state,
					 NISLANDS_SMC_SWSTATE *smc_state)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	struct ni_power_info *ni_pi = FUNC3(rdev);
	struct ni_ps *state = FUNC4(radeon_state);
	int i, ret;
	u32 threshold = state->performance_levels[state->performance_level_count - 1].sclk * 100 / 100;

	if (!(radeon_state->caps & ATOM_PPLIB_DISALLOW_ON_DC))
		smc_state->flags |= PPSMC_SWSTATE_FLAG_DC;

	smc_state->levelCount = 0;

	if (state->performance_level_count > NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE)
		return -EINVAL;

	for (i = 0; i < state->performance_level_count; i++) {
		ret = FUNC2(rdev, &state->performance_levels[i],
						    &smc_state->levels[i]);
		smc_state->levels[i].arbRefreshState =
			(u8)(NISLANDS_DRIVER_STATE_ARB_INDEX + i);

		if (ret)
			return ret;

		if (ni_pi->enable_power_containment)
			smc_state->levels[i].displayWatermark =
				(state->performance_levels[i].sclk < threshold) ?
				PPSMC_DISPLAY_WATERMARK_LOW : PPSMC_DISPLAY_WATERMARK_HIGH;
		else
			smc_state->levels[i].displayWatermark = (i < 2) ?
				PPSMC_DISPLAY_WATERMARK_LOW : PPSMC_DISPLAY_WATERMARK_HIGH;

		if (eg_pi->dynamic_ac_timing)
			smc_state->levels[i].ACIndex = NISLANDS_MCREGISTERTABLE_FIRST_DRIVERSTATE_SLOT + i;
		else
			smc_state->levels[i].ACIndex = 0;

		smc_state->levelCount++;
	}

	FUNC9(rdev, NI_SMC_SOFT_REGISTER_watermark_threshold,
				      FUNC0(threshold / 512));

	FUNC6(rdev, radeon_state, smc_state);

	ret = FUNC5(rdev, radeon_state, smc_state);
	if (ret)
		ni_pi->enable_power_containment = false;

	ret = FUNC8(rdev, radeon_state, smc_state);
	if (ret)
		ni_pi->enable_sq_ramping = false;

	return FUNC7(rdev, radeon_state, smc_state);
}