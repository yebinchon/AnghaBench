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
struct trinity_power_info {scalar_t__ enable_gfx_power_gating; scalar_t__ uvd_dpm; } ;
struct radeon_ps {int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_MISC_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trinity_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 scalar_t__ FUNC7 (struct radeon_ps*,struct radeon_ps*) ; 
 scalar_t__ FUNC8 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC10(struct radeon_device *rdev,
				     struct radeon_ps *new_rps,
				     struct radeon_ps *old_rps)
{
	struct trinity_power_info *pi = FUNC3(rdev);

	if (pi->enable_gfx_power_gating) {
		FUNC4(rdev, false);
	}

	if (pi->uvd_dpm) {
		if (FUNC8(new_rps) &&
		    !FUNC8(old_rps)) {
			FUNC6(rdev, 0);
		} else if (!FUNC8(new_rps)) {
			FUNC5(rdev, new_rps);

			if (FUNC8(old_rps)) {
				u32 tmp = FUNC0(CG_MISC_REG);
				tmp &= 0xfffffffd;
				FUNC1(CG_MISC_REG, tmp);

				FUNC2(rdev, new_rps->vclk, new_rps->dclk);

				FUNC6(rdev, 3000);
			}
		}
		FUNC9(rdev);
	} else {
		if (FUNC8(new_rps) ||
		    FUNC7(new_rps, old_rps))
			return;

		FUNC2(rdev, new_rps->vclk, new_rps->dclk);
	}

	if (pi->enable_gfx_power_gating) {
		FUNC4(rdev, true);
	}
}