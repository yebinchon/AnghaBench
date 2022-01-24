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
struct psp_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct amdgpu_device {TYPE_1__ firmware; struct psp_context psp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct psp_context*) ; 
 int FUNC5 (struct psp_context*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct psp_context *psp = &adev->psp;

	FUNC1("PSP is resuming...\n");

	FUNC2(&adev->firmware.mutex);

	ret = FUNC4(psp);
	if (ret)
		goto failed;

	ret = FUNC5(psp);
	if (ret)
		goto failed;

	FUNC3(&adev->firmware.mutex);

	return 0;

failed:
	FUNC0("PSP resume failed\n");
	FUNC3(&adev->firmware.mutex);
	return ret;
}