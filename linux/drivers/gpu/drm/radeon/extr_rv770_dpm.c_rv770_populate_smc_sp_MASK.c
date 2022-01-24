#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rv7xx_power_info {int /*<<< orphan*/  psp; int /*<<< orphan*/  dsp; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* levels; } ;
struct TYPE_4__ {void* bSP; } ;
typedef  TYPE_2__ RV770_SMC_SWSTATE ;

/* Variables and functions */
 int RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

int FUNC2(struct radeon_device *rdev,
			  struct radeon_ps *radeon_state,
			  RV770_SMC_SWSTATE *smc_state)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);
	int i;

	for (i = 0; i < (RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE - 1); i++)
		smc_state->levels[i].bSP = FUNC0(pi->dsp);

	smc_state->levels[RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE - 1].bSP =
		FUNC0(pi->psp);

	return 0;
}