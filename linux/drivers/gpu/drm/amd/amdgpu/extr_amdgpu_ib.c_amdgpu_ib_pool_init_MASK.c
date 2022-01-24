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
struct amdgpu_device {int ib_pool_ready; int /*<<< orphan*/  dev; int /*<<< orphan*/  ring_tmp_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  AMDGPU_GPU_PAGE_SIZE ; 
 int AMDGPU_IB_POOL_SIZE ; 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct amdgpu_device *adev)
{
	int r;

	if (adev->ib_pool_ready) {
		return 0;
	}
	r = FUNC1(adev, &adev->ring_tmp_bo,
				      AMDGPU_IB_POOL_SIZE*64*1024,
				      AMDGPU_GPU_PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_GTT);
	if (r) {
		return r;
	}

	adev->ib_pool_ready = true;
	if (FUNC0(adev)) {
		FUNC2(adev->dev, "failed to register debugfs file for SA\n");
	}
	return 0;
}