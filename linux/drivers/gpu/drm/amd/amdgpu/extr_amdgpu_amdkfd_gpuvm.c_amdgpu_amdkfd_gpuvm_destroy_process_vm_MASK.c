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
struct kgd_dev {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_vm*) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 

void FUNC5(struct kgd_dev *kgd, void *vm)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	struct amdgpu_vm *avm = (struct amdgpu_vm *)vm;

	if (FUNC0(!kgd || !vm))
		return;

	FUNC4("Destroying process vm %p\n", vm);

	/* Release the VM context */
	FUNC1(adev, avm);
	FUNC3(vm);
}