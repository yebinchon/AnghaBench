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
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  load_type; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_FW_LOAD_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC2(&adev->firmware.mutex);
	/*
	 * This sequence is just used on hw_init only once, no need on
	 * resume.
	 */
	ret = FUNC1(adev);
	if (ret)
		goto failed;

	ret = FUNC4(adev);
	if (ret) {
		FUNC0("PSP firmware loading failed\n");
		goto failed;
	}

	FUNC3(&adev->firmware.mutex);
	return 0;

failed:
	adev->firmware.load_type = AMDGPU_FW_LOAD_DIRECT;
	FUNC3(&adev->firmware.mutex);
	return -EINVAL;
}