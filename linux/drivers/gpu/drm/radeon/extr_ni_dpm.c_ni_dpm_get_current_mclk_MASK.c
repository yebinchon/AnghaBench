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
typedef  size_t u32 ;
struct rv7xx_pl {size_t mclk; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {size_t performance_level_count; struct rv7xx_pl* performance_levels; } ;
struct evergreen_power_info {struct radeon_ps current_rps; } ;

/* Variables and functions */
 size_t CURRENT_STATE_INDEX_MASK ; 
 size_t CURRENT_STATE_INDEX_SHIFT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 struct ni_ps* FUNC2 (struct radeon_ps*) ; 

u32 FUNC3(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	struct radeon_ps *rps = &eg_pi->current_rps;
	struct ni_ps *ps = FUNC2(rps);
	struct rv7xx_pl *pl;
	u32 current_index =
		(FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_STATE_INDEX_MASK) >>
		CURRENT_STATE_INDEX_SHIFT;

	if (current_index >= ps->performance_level_count) {
		return 0;
	} else {
		pl = &ps->performance_levels[current_index];
		return pl->mclk;
	}
}