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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int /*<<< orphan*/  pcie_dpm_key_disabled; } ;
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_PCIeDPM_ForceLevel ; 
 scalar_t__ PPSMC_Result_OK ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev, u32 n)
{
	struct ci_power_info *pi = FUNC0(rdev);

	if (!pi->pcie_dpm_key_disabled) {
		PPSMC_Result smc_result =
			FUNC1(rdev, PPSMC_MSG_PCIeDPM_ForceLevel, n);
		if (smc_result != PPSMC_Result_OK)
			return -EINVAL;
	}

	return 0;
}