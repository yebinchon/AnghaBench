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
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_vm {int /*<<< orphan*/  last_update; TYPE_2__ root; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_3__ tbo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct amdgpu_sync*,int /*<<< orphan*/ ,int) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_vm*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_vm *vm, struct amdgpu_sync *sync)
{
	struct amdgpu_bo *pd = vm->root.base.bo;
	struct amdgpu_device *adev = FUNC1(pd->tbo.bdev);
	int ret;

	ret = FUNC2(adev, vm);
	if (ret)
		return ret;

	return FUNC0(NULL, sync, vm->last_update, false);
}