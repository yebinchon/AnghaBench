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
struct TYPE_4__ {int /*<<< orphan*/  saved_bo; void* cpu_addr; int /*<<< orphan*/ * vcpu_bo; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_2__ vce; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int r;

	if (adev->vce.vcpu_bo == NULL)
		return 0;

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		unsigned size = FUNC0(adev->vce.vcpu_bo);
		void *ptr = adev->vce.cpu_addr;

		FUNC2(adev->vce.saved_bo, ptr, size);
	}

	r = FUNC3(adev);
	if (r)
		return r;

	return FUNC1(adev);
}