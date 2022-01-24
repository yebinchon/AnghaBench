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
typedef  int u8 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int acp_boot_level; int /*<<< orphan*/  caps_stable_p_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_ACPDPM_SetEnabledMask ; 
 int FUNC0 (struct radeon_device*) ; 
 struct kv_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC1(rdev);
	u8 acp_boot_level;

	if (!pi->caps_stable_p_state) {
		acp_boot_level = FUNC0(rdev);
		if (acp_boot_level != pi->acp_boot_level) {
			pi->acp_boot_level = acp_boot_level;
			FUNC2(rdev,
							  PPSMC_MSG_ACPDPM_SetEnabledMask,
							  (1 << pi->acp_boot_level));
		}
	}
}