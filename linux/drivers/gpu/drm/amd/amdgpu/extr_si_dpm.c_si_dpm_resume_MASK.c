#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dpm_enabled; int /*<<< orphan*/  mutex; } ;
struct amdgpu_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (adev->pm.dpm_enabled) {
		/* asic init will reset to the boot state */
		FUNC1(&adev->pm.mutex);
		FUNC4(adev);
		ret = FUNC3(adev);
		if (ret)
			adev->pm.dpm_enabled = false;
		else
			adev->pm.dpm_enabled = true;
		FUNC2(&adev->pm.mutex);
		if (adev->pm.dpm_enabled)
			FUNC0(adev);
	}
	return 0;
}