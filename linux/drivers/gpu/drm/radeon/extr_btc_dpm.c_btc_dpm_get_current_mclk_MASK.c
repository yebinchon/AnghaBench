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
typedef  int u32 ;
struct rv7xx_pl {int mclk; } ;
struct rv7xx_ps {struct rv7xx_pl high; struct rv7xx_pl medium; struct rv7xx_pl low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {struct radeon_ps current_rps; } ;

/* Variables and functions */
 int CURRENT_PROFILE_INDEX_MASK ; 
 int CURRENT_PROFILE_INDEX_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 struct rv7xx_ps* FUNC2 (struct radeon_ps*) ; 

u32 FUNC3(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);
	struct radeon_ps *rps = &eg_pi->current_rps;
	struct rv7xx_ps *ps = FUNC2(rps);
	struct rv7xx_pl *pl;
	u32 current_index =
		(FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_PROFILE_INDEX_MASK) >>
		CURRENT_PROFILE_INDEX_SHIFT;

	if (current_index > 2) {
		return 0;
	} else {
		if (current_index == 0)
			pl = &ps->low;
		else if (current_index == 1)
			pl = &ps->medium;
		else /* current_index == 2 */
			pl = &ps->high;
		return pl->mclk;
	}
}