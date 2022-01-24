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
struct radeon_device {scalar_t__ family; } ;
struct kv_power_info {int acp_power_gated; scalar_t__ caps_acp_pg; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  PPSMC_MSG_ACPPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_ACPPowerON ; 
 struct kv_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev, bool gate)
{
	struct kv_power_info *pi = FUNC0(rdev);

	if (pi->acp_power_gated == gate)
		return;

	if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
		return;

	pi->acp_power_gated = gate;

	if (gate) {
		FUNC2(rdev, true);
		if (pi->caps_acp_pg)
			FUNC1(rdev, PPSMC_MSG_ACPPowerOFF);
	} else {
		if (pi->caps_acp_pg)
			FUNC1(rdev, PPSMC_MSG_ACPPowerON);
		FUNC2(rdev, false);
	}
}