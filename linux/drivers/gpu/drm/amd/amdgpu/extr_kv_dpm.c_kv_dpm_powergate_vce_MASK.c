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
struct kv_power_info {int vce_power_gated; scalar_t__ caps_vce_pg; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_VCE ; 
 int /*<<< orphan*/  AMD_PG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  PPSMC_MSG_VCEPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_VCEPowerON ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC4(void *handle, bool gate)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC3(adev);
	int ret;

	pi->vce_power_gated = gate;

	if (gate) {
		/* stop the VCE block */
		ret = FUNC0(adev, AMD_IP_BLOCK_TYPE_VCE,
							     AMD_PG_STATE_GATE);
		FUNC2(adev, false);
		if (pi->caps_vce_pg) /* power off the VCE block */
			FUNC1(adev, PPSMC_MSG_VCEPowerOFF);
	} else {
		if (pi->caps_vce_pg) /* power on the VCE block */
			FUNC1(adev, PPSMC_MSG_VCEPowerON);
		FUNC2(adev, true);
		/* re-init the VCE block */
		ret = FUNC0(adev, AMD_IP_BLOCK_TYPE_VCE,
							     AMD_PG_STATE_UNGATE);
	}
}