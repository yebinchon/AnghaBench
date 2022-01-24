#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  work; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  boot_ps; int /*<<< orphan*/  requested_ps; int /*<<< orphan*/  current_ps; TYPE_2__ thermal; int /*<<< orphan*/  forced_level; void* user_state; void* state; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; TYPE_3__ dpm; int /*<<< orphan*/  int_thermal_type; int /*<<< orphan*/  current_mclk; int /*<<< orphan*/  current_sclk; int /*<<< orphan*/  default_mclk; int /*<<< orphan*/  default_sclk; } ;
struct TYPE_5__ {int /*<<< orphan*/  default_mclk; int /*<<< orphan*/  default_sclk; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_1__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 int /*<<< orphan*/  AMD_DPM_FORCED_LEVEL_AUTO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* POWER_STATE_TYPE_BALANCED ; 
 int /*<<< orphan*/  THERMAL_TYPE_NONE ; 
 int amdgpu_dpm ; 
 int /*<<< orphan*/  amdgpu_dpm_thermal_work_handler ; 
 int FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	ret = FUNC3(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 230,
				&adev->pm.dpm.thermal.irq);
	if (ret)
		return ret;

	ret = FUNC3(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 231,
				&adev->pm.dpm.thermal.irq);
	if (ret)
		return ret;

	/* default to balanced state */
	adev->pm.dpm.state = POWER_STATE_TYPE_BALANCED;
	adev->pm.dpm.user_state = POWER_STATE_TYPE_BALANCED;
	adev->pm.dpm.forced_level = AMD_DPM_FORCED_LEVEL_AUTO;
	adev->pm.default_sclk = adev->clock.default_sclk;
	adev->pm.default_mclk = adev->clock.default_mclk;
	adev->pm.current_sclk = adev->clock.default_sclk;
	adev->pm.current_mclk = adev->clock.default_mclk;
	adev->pm.int_thermal_type = THERMAL_TYPE_NONE;

	if (amdgpu_dpm == 0)
		return 0;

	FUNC2(&adev->pm.dpm.thermal.work, amdgpu_dpm_thermal_work_handler);
	FUNC7(&adev->pm.mutex);
	ret = FUNC6(adev);
	if (ret)
		goto dpm_failed;
	adev->pm.dpm.current_ps = adev->pm.dpm.requested_ps = adev->pm.dpm.boot_ps;
	if (amdgpu_dpm == 1)
		FUNC4(adev);
	FUNC8(&adev->pm.mutex);
	FUNC1("amdgpu: dpm initialized\n");

	return 0;

dpm_failed:
	FUNC5(adev);
	FUNC8(&adev->pm.mutex);
	FUNC0("amdgpu: dpm initialization failed\n");
	return ret;
}