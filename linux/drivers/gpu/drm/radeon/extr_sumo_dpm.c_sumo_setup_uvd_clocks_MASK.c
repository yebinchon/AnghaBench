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
struct sumo_power_info {int /*<<< orphan*/  disable_gfx_power_gating_in_uvd; scalar_t__ enable_gfx_power_gating; } ;
struct radeon_ps {int /*<<< orphan*/  class2; int /*<<< orphan*/  class; int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
				  struct radeon_ps *new_rps,
				  struct radeon_ps *old_rps)
{
	struct sumo_power_info *pi = FUNC2(rdev);

	if (pi->enable_gfx_power_gating) {
		FUNC3(rdev, false);
	}

	FUNC1(rdev, new_rps->vclk, new_rps->dclk);

	if (pi->enable_gfx_power_gating) {
		if (!pi->disable_gfx_power_gating_in_uvd ||
		    !FUNC0(new_rps->class, new_rps->class2))
			FUNC3(rdev, true);
	}
}