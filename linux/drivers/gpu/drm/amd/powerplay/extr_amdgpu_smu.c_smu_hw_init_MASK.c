#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smu_context {int /*<<< orphan*/  pm_enabled; } ;
struct TYPE_4__ {int dpm_enabled; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {scalar_t__ asic_type; int flags; TYPE_2__ pm; struct smu_context smu; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int AMD_IS_APU ; 
 scalar_t__ CHIP_NAVI10 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct smu_context*) ; 
 int FUNC3 (struct smu_context*) ; 
 int FUNC4 (struct smu_context*) ; 
 int FUNC5 (struct smu_context*) ; 
 int FUNC6 (struct smu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct smu_context*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct smu_context*,int) ; 
 int FUNC9 (struct smu_context*,int) ; 
 int FUNC10 (struct smu_context*) ; 

__attribute__((used)) static int FUNC11(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct smu_context *smu = &adev->smu;

	if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
		if (adev->asic_type < CHIP_NAVI10) {
			ret = FUNC5(smu);
			if (ret)
				return ret;
		}
	}

	ret = FUNC3(smu);
	if (ret) {
		FUNC0("SMC firmware status is not correct\n");
		return ret;
	}

	if (adev->flags & AMD_IS_APU) {
		FUNC7(&adev->smu, false);
		FUNC8(&adev->smu, false);
	}

	if (!smu->pm_enabled)
		return 0;

	ret = FUNC4(smu);
	if (ret)
		goto failed;

	ret = FUNC9(smu, true);
	if (ret)
		goto failed;

	ret = FUNC2(smu);
	if (ret)
		goto failed;

	/*
	 * Use msg SetSystemVirtualDramAddr and DramLogSetDramAddr can notify
	 * pool location.
	 */
	ret = FUNC6(smu);
	if (ret)
		goto failed;

	ret = FUNC10(smu);
	if (ret)
		goto failed;

	if (!smu->pm_enabled)
		adev->pm.dpm_enabled = false;
	else
		adev->pm.dpm_enabled = true;	/* TODO: will set dpm_enabled flag while VCN and DAL DPM is workable */

	FUNC1("SMU is initialized successfully!\n");

	return 0;

failed:
	return ret;
}