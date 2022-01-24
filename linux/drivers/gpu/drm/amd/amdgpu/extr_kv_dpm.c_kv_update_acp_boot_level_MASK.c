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
struct kv_power_info {int acp_boot_level; int /*<<< orphan*/  caps_stable_p_state; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_ACPDPM_SetEnabledMask ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC2(adev);
	u8 acp_boot_level;

	if (!pi->caps_stable_p_state) {
		acp_boot_level = FUNC1(adev);
		if (acp_boot_level != pi->acp_boot_level) {
			pi->acp_boot_level = acp_boot_level;
			FUNC0(adev,
							  PPSMC_MSG_ACPDPM_SetEnabledMask,
							  (1 << pi->acp_boot_level));
		}
	}
}