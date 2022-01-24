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
struct rv7xx_power_info {scalar_t__ thermal_protection; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 struct rv7xx_power_info* FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,struct amdgpu_ps*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,struct amdgpu_ps*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC15(struct amdgpu_device *adev)
{
	struct rv7xx_power_info *pi = FUNC2(adev);
	struct amdgpu_ps *boot_ps = adev->pm.dpm.boot_ps;

	if (!FUNC0(adev))
		return;
	FUNC14(adev);
	FUNC4(adev);
	FUNC3(adev);
	if (pi->thermal_protection)
		FUNC10(adev, false);
	FUNC7(adev, boot_ps, false);
	FUNC8(adev, boot_ps, false);
	FUNC9(adev, false);
	FUNC6(adev, AMDGPU_DPM_AUTO_THROTTLE_SRC_THERMAL, false);
	FUNC13(adev);
	FUNC12(adev);
	FUNC5(adev);
	FUNC11(adev);

	FUNC1(adev, boot_ps);
}