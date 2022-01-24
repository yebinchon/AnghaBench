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
struct dma_fence {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_VM_CONTEXT_COMPUTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,struct amdgpu_vm*) ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_vm*,int /*<<< orphan*/ ,unsigned int) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int FUNC3 (struct amdgpu_vm*,void**,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_vm*) ; 
 struct amdgpu_vm* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(struct kgd_dev *kgd, unsigned int pasid,
					  void **vm, void **process_info,
					  struct dma_fence **ef)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	struct amdgpu_vm *new_vm;
	int ret;

	new_vm = FUNC5(sizeof(*new_vm), GFP_KERNEL);
	if (!new_vm)
		return -ENOMEM;

	/* Initialize AMDGPU part of the VM */
	ret = FUNC1(adev, new_vm, AMDGPU_VM_CONTEXT_COMPUTE, pasid);
	if (ret) {
		FUNC6("Failed init vm ret %d\n", ret);
		goto amdgpu_vm_init_fail;
	}

	/* Initialize KFD part of the VM and process info */
	ret = FUNC3(new_vm, process_info, ef);
	if (ret)
		goto init_kfd_vm_fail;

	*vm = (void *) new_vm;

	return 0;

init_kfd_vm_fail:
	FUNC0(adev, new_vm);
amdgpu_vm_init_fail:
	FUNC4(new_vm);
	return ret;
}