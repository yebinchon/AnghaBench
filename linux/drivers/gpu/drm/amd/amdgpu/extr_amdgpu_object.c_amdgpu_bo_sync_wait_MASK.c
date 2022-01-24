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
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct TYPE_4__ {TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_sync*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_sync*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_sync*,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC3 (struct amdgpu_sync*,int) ; 
 struct amdgpu_device* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct amdgpu_bo *bo, void *owner, bool intr)
{
	struct amdgpu_device *adev = FUNC4(bo->tbo.bdev);
	struct amdgpu_sync sync;
	int r;

	FUNC0(&sync);
	FUNC2(adev, &sync, bo->tbo.base.resv, owner, false);
	r = FUNC3(&sync, intr);
	FUNC1(&sync);

	return r;
}