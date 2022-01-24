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
struct radeon_device {int dummy; } ;
struct kv_power_info {int uvd_power_gated; scalar_t__ caps_uvd_pg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerON ; 
 int /*<<< orphan*/  RADEON_CG_BLOCK_UVD ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 struct kv_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

void FUNC7(struct radeon_device *rdev, bool gate)
{
	struct kv_power_info *pi = FUNC1(rdev);

	if (pi->uvd_power_gated == gate)
		return;

	pi->uvd_power_gated = gate;

	if (gate) {
		if (pi->caps_uvd_pg) {
			FUNC5(rdev);
			FUNC0(rdev, RADEON_CG_BLOCK_UVD, false);
		}
		FUNC3(rdev, gate);
		if (pi->caps_uvd_pg)
			FUNC2(rdev, PPSMC_MSG_UVDPowerOFF);
	} else {
		if (pi->caps_uvd_pg) {
			FUNC2(rdev, PPSMC_MSG_UVDPowerON);
			FUNC6(rdev);
			FUNC4(rdev);
			FUNC0(rdev, RADEON_CG_BLOCK_UVD, true);
		}
		FUNC3(rdev, gate);
	}
}