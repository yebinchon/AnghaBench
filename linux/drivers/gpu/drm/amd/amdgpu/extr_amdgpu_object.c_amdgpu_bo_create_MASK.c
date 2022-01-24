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
typedef  int u64 ;
struct amdgpu_device {int flags; } ;
struct amdgpu_bo_param {int flags; int /*<<< orphan*/  resv; int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_SHADOW ; 
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,struct amdgpu_bo*) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct amdgpu_device *adev,
		     struct amdgpu_bo_param *bp,
		     struct amdgpu_bo **bo_ptr)
{
	u64 flags = bp->flags;
	int r;

	bp->flags = bp->flags & ~AMDGPU_GEM_CREATE_SHADOW;
	r = FUNC2(adev, bp, bo_ptr);
	if (r)
		return r;

	if ((flags & AMDGPU_GEM_CREATE_SHADOW) && !(adev->flags & AMD_IS_APU)) {
		if (!bp->resv)
			FUNC0(FUNC4((*bo_ptr)->tbo.base.resv,
							NULL));

		r = FUNC1(adev, bp->size, *bo_ptr);

		if (!bp->resv)
			FUNC5((*bo_ptr)->tbo.base.resv);

		if (r)
			FUNC3(bo_ptr);
	}

	return r;
}