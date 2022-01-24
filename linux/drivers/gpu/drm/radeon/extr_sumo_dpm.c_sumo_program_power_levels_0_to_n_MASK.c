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
struct sumo_ps {int num_levels; int flags; int /*<<< orphan*/ * levels; } ;
struct sumo_power_info {int /*<<< orphan*/  boost_pl; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 size_t BOOST_DPM_LEVEL ; 
 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ; 
 struct sumo_power_info* FUNC0 (struct radeon_device*) ; 
 struct sumo_ps* FUNC1 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					     struct radeon_ps *new_rps,
					     struct radeon_ps *old_rps)
{
	struct sumo_power_info *pi = FUNC0(rdev);
	struct sumo_ps *new_ps = FUNC1(new_rps);
	struct sumo_ps *old_ps = FUNC1(old_rps);
	u32 i;
	u32 n_current_state_levels = (old_ps == NULL) ? 1 : old_ps->num_levels;

	for (i = 0; i < new_ps->num_levels; i++) {
		FUNC3(rdev, &new_ps->levels[i], i);
		FUNC2(rdev, i, true);
	}

	for (i = new_ps->num_levels; i < n_current_state_levels; i++)
		FUNC2(rdev, i, false);

	if (new_ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE)
		FUNC3(rdev, &pi->boost_pl, BOOST_DPM_LEVEL);
}