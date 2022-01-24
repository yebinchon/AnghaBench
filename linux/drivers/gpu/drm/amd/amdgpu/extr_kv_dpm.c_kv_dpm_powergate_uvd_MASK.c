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
struct kv_power_info {int uvd_power_gated; scalar_t__ caps_uvd_pg; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_UVD ; 
 int /*<<< orphan*/  AMD_PG_STATE_GATE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerOFF ; 
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerON ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC4(void *handle, bool gate)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct kv_power_info *pi = FUNC2(adev);
	int ret;

	pi->uvd_power_gated = gate;

	if (gate) {
		/* stop the UVD block */
		ret = FUNC0(adev, AMD_IP_BLOCK_TYPE_UVD,
							     AMD_PG_STATE_GATE);
		FUNC3(adev, gate);
		if (pi->caps_uvd_pg)
			/* power off the UVD block */
			FUNC1(adev, PPSMC_MSG_UVDPowerOFF);
	} else {
		if (pi->caps_uvd_pg)
			/* power on the UVD block */
			FUNC1(adev, PPSMC_MSG_UVDPowerON);
			/* re-init the UVD block */
		FUNC3(adev, gate);

		ret = FUNC0(adev, AMD_IP_BLOCK_TYPE_UVD,
							     AMD_PG_STATE_UNGATE);
	}
}