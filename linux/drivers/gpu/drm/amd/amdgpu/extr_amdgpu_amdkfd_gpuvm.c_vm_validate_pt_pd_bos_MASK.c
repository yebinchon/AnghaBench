#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_vm_parser {int wait; int /*<<< orphan*/  domain; } ;
struct TYPE_5__ {struct amdgpu_bo* bo; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct amdgpu_vm {scalar_t__ use_cpu_for_update; TYPE_3__ root; int /*<<< orphan*/  pd_phys_addr; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int FUNC0 (struct amdgpu_vm_parser*,struct amdgpu_bo*) ; 
 int FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amdgpu_device*,struct amdgpu_vm*,int (*) (struct amdgpu_vm_parser*,struct amdgpu_bo*),struct amdgpu_vm_parser*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_vm *vm)
{
	struct amdgpu_bo *pd = vm->root.base.bo;
	struct amdgpu_device *adev = FUNC3(pd->tbo.bdev);
	struct amdgpu_vm_parser param;
	int ret;

	param.domain = AMDGPU_GEM_DOMAIN_VRAM;
	param.wait = false;

	ret = FUNC4(adev, vm, amdgpu_amdkfd_validate,
					&param);
	if (ret) {
		FUNC5("amdgpu: failed to validate PT BOs\n");
		return ret;
	}

	ret = FUNC0(&param, pd);
	if (ret) {
		FUNC5("amdgpu: failed to validate PD\n");
		return ret;
	}

	vm->pd_phys_addr = FUNC2(vm->root.base.bo);

	if (vm->use_cpu_for_update) {
		ret = FUNC1(pd, NULL);
		if (ret) {
			FUNC5("amdgpu: failed to kmap PD, ret=%d\n", ret);
			return ret;
		}
	}

	return 0;
}