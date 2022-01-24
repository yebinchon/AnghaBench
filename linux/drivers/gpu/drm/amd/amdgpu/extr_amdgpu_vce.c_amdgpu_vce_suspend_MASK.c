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
struct TYPE_2__ {int /*<<< orphan*/ * handles; int /*<<< orphan*/ * vcpu_bo; int /*<<< orphan*/  idle_work; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int AMDGPU_MAX_VCE_HANDLES ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct amdgpu_device *adev)
{
	int i;

	FUNC1(&adev->vce.idle_work);

	if (adev->vce.vcpu_bo == NULL)
		return 0;

	for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i)
		if (FUNC0(&adev->vce.handles[i]))
			break;

	if (i == AMDGPU_MAX_VCE_HANDLES)
		return 0;

	/* TODO: suspending running encoding sessions isn't supported */
	return -EINVAL;
}