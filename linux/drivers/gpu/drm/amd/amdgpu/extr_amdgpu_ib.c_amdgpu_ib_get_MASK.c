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
struct amdgpu_vm {int dummy; } ;
struct amdgpu_ib {int /*<<< orphan*/  sa_bo; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  ptr; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ring_tmp_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4(struct amdgpu_device *adev, struct amdgpu_vm *vm,
		  unsigned size, struct amdgpu_ib *ib)
{
	int r;

	if (size) {
		r = FUNC2(&adev->ring_tmp_bo,
				      &ib->sa_bo, size, 256);
		if (r) {
			FUNC3(adev->dev, "failed to get a new IB (%d)\n", r);
			return r;
		}

		ib->ptr = FUNC0(ib->sa_bo);

		if (!vm)
			ib->gpu_addr = FUNC1(ib->sa_bo);
	}

	return 0;
}