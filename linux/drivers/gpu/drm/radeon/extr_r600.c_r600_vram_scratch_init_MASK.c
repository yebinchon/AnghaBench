#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * robj; int /*<<< orphan*/  ptr; int /*<<< orphan*/  gpu_addr; } ;
struct radeon_device {TYPE_1__ vram_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  RADEON_GPU_PAGE_SIZE ; 
 int FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct radeon_device *rdev)
{
	int r;

	if (rdev->vram_scratch.robj == NULL) {
		r = FUNC0(rdev, RADEON_GPU_PAGE_SIZE,
				     PAGE_SIZE, true, RADEON_GEM_DOMAIN_VRAM,
				     0, NULL, NULL, &rdev->vram_scratch.robj);
		if (r) {
			return r;
		}
	}

	r = FUNC3(rdev->vram_scratch.robj, false);
	if (FUNC6(r != 0))
		return r;
	r = FUNC2(rdev->vram_scratch.robj,
			  RADEON_GEM_DOMAIN_VRAM, &rdev->vram_scratch.gpu_addr);
	if (r) {
		FUNC5(rdev->vram_scratch.robj);
		return r;
	}
	r = FUNC1(rdev->vram_scratch.robj,
				(void **)&rdev->vram_scratch.ptr);
	if (r)
		FUNC4(rdev->vram_scratch.robj);
	FUNC5(rdev->vram_scratch.robj);

	return r;
}