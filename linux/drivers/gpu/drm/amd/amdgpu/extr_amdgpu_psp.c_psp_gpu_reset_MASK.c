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
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__ psp; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 

int FUNC3(struct amdgpu_device *adev)
{
	int ret;

	if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP)
		return 0;

	FUNC0(&adev->psp.mutex);
	ret = FUNC2(&adev->psp);
	FUNC1(&adev->psp.mutex);

	return ret;
}