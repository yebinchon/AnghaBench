#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_VA_OP_MAP ; 
 scalar_t__ AMDGPU_VA_OP_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ERESTARTSYS ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_bo_va*,int) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_vm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_vm*) ; 
 int FUNC4 (struct amdgpu_device*,struct amdgpu_vm*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev,
				    struct amdgpu_vm *vm,
				    struct amdgpu_bo_va *bo_va,
				    uint32_t operation)
{
	int r;

	if (!FUNC3(vm))
		return;

	r = FUNC2(adev, vm, NULL);
	if (r)
		goto error;

	if (operation == AMDGPU_VA_OP_MAP ||
	    operation == AMDGPU_VA_OP_REPLACE) {
		r = FUNC1(adev, bo_va, false);
		if (r)
			goto error;
	}

	r = FUNC4(adev, vm);

error:
	if (r && r != -ERESTARTSYS)
		FUNC0("Couldn't update BO_VA (%d)\n", r);
}