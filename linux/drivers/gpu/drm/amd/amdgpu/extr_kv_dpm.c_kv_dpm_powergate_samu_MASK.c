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
struct kv_power_info {int samu_power_gated; scalar_t__ caps_samu_pg; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_SAMPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_SAMPowerON ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, bool gate)
{
	struct kv_power_info *pi = FUNC1(adev);

	if (pi->samu_power_gated == gate)
		return;

	pi->samu_power_gated = gate;

	if (gate) {
		FUNC2(adev, true);
		if (pi->caps_samu_pg)
			FUNC0(adev, PPSMC_MSG_SAMPowerOFF);
	} else {
		if (pi->caps_samu_pg)
			FUNC0(adev, PPSMC_MSG_SAMPowerON);
		FUNC2(adev, false);
	}
}