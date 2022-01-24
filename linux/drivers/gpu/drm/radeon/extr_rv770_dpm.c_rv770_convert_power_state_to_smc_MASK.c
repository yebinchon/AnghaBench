#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rv7xx_ps {int /*<<< orphan*/  high; int /*<<< orphan*/  medium; int /*<<< orphan*/  low; } ;
struct radeon_ps {int caps; } ;
struct radeon_device {int dummy; } ;
struct TYPE_7__ {void* seqValue; int /*<<< orphan*/  arbValue; } ;
struct TYPE_6__ {TYPE_5__* levels; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RV770_SMC_SWSTATE ;

/* Variables and functions */
 int ATOM_PPLIB_DISALLOW_ON_DC ; 
 int /*<<< orphan*/  MC_CG_ARB_FREQ_F1 ; 
 int /*<<< orphan*/  MC_CG_ARB_FREQ_F2 ; 
 int /*<<< orphan*/  MC_CG_ARB_FREQ_F3 ; 
 int /*<<< orphan*/  PPSMC_DISPLAY_WATERMARK_HIGH ; 
 int /*<<< orphan*/  PPSMC_DISPLAY_WATERMARK_LOW ; 
 int /*<<< orphan*/  PPSMC_SWSTATE_FLAG_DC ; 
 int FUNC0 (struct radeon_device*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct rv7xx_ps* FUNC1 (struct radeon_ps*) ; 
 void* FUNC2 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev,
					    struct radeon_ps *radeon_state,
					    RV770_SMC_SWSTATE *smc_state)
{
	struct rv7xx_ps *state = FUNC1(radeon_state);
	int ret;

	if (!(radeon_state->caps & ATOM_PPLIB_DISALLOW_ON_DC))
		smc_state->flags |= PPSMC_SWSTATE_FLAG_DC;

	ret = FUNC0(rdev,
					       &state->low,
					       &smc_state->levels[0],
					       PPSMC_DISPLAY_WATERMARK_LOW);
	if (ret)
		return ret;

	ret = FUNC0(rdev,
					       &state->medium,
					       &smc_state->levels[1],
					       PPSMC_DISPLAY_WATERMARK_LOW);
	if (ret)
		return ret;

	ret = FUNC0(rdev,
					       &state->high,
					       &smc_state->levels[2],
					       PPSMC_DISPLAY_WATERMARK_HIGH);
	if (ret)
		return ret;

	smc_state->levels[0].arbValue = MC_CG_ARB_FREQ_F1;
	smc_state->levels[1].arbValue = MC_CG_ARB_FREQ_F2;
	smc_state->levels[2].arbValue = MC_CG_ARB_FREQ_F3;

	smc_state->levels[0].seqValue = FUNC2(rdev,
							    &state->low);
	smc_state->levels[1].seqValue = FUNC2(rdev,
							    &state->medium);
	smc_state->levels[2].seqValue = FUNC2(rdev,
							    &state->high);

	FUNC3(rdev, radeon_state, smc_state);

	return FUNC4(rdev, radeon_state, smc_state);

}