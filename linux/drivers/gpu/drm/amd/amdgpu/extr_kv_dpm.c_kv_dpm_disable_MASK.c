#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kv_power_info {scalar_t__ caps_uvd_pg; scalar_t__ caps_vce_pg; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  boot_ps; TYPE_1__ thermal; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_THERMAL_IRQ_HIGH_TO_LOW ; 
 int /*<<< orphan*/  AMDGPU_THERMAL_IRQ_LOW_TO_HIGH ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  PPSMC_MSG_UVDPowerON ; 
 int /*<<< orphan*/  PPSMC_MSG_VCEPowerON ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC10 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct amdgpu_device *adev)
{
	struct kv_power_info *pi = FUNC10(adev);

	FUNC0(adev, &adev->pm.dpm.thermal.irq,
		       AMDGPU_THERMAL_IRQ_LOW_TO_HIGH);
	FUNC0(adev, &adev->pm.dpm.thermal.irq,
		       AMDGPU_THERMAL_IRQ_HIGH_TO_LOW);

	FUNC2(adev, false);

	if (adev->asic_type == CHIP_MULLINS)
		FUNC7(adev, false);

	/* powerup blocks */
	FUNC4(adev, false);
	FUNC5(adev, false);
	if (pi->caps_vce_pg) /* power on the VCE block */
		FUNC1(adev, PPSMC_MSG_VCEPowerON);
	if (pi->caps_uvd_pg) /* power on the UVD block */
		FUNC1(adev, PPSMC_MSG_UVDPowerON);

	FUNC8(adev, false);
	FUNC6(adev, false);
	FUNC3(adev);
	FUNC12(adev);
	FUNC9(adev, false);
	FUNC11(adev);

	FUNC13(adev, adev->pm.dpm.boot_ps);
}