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
typedef  int uint64_t ;
typedef  int u64 ;
struct ttm_mem_reg {int mem_type; unsigned int num_pages; scalar_t__ start; } ;
struct TYPE_6__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {TYPE_3__ base; int /*<<< orphan*/  bdev; } ;
struct radeon_fence {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int vram_start; int gtt_start; } ;
struct radeon_device {TYPE_2__* ring; TYPE_1__ mc; } ;
struct TYPE_5__ {int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct radeon_fence*) ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int FUNC3 (struct radeon_fence*) ; 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
#define  TTM_PL_TT 129 
#define  TTM_PL_VRAM 128 
 struct radeon_fence* FUNC4 (struct radeon_device*,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_fence**) ; 
 struct radeon_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_buffer_object*,int /*<<< orphan*/ *,int,struct ttm_mem_reg*) ; 

__attribute__((used)) static int FUNC9(struct ttm_buffer_object *bo,
			bool evict, bool no_wait_gpu,
			struct ttm_mem_reg *new_mem,
			struct ttm_mem_reg *old_mem)
{
	struct radeon_device *rdev;
	uint64_t old_start, new_start;
	struct radeon_fence *fence;
	unsigned num_pages;
	int r, ridx;

	rdev = FUNC7(bo->bdev);
	ridx = FUNC5(rdev);
	old_start = (u64)old_mem->start << PAGE_SHIFT;
	new_start = (u64)new_mem->start << PAGE_SHIFT;

	switch (old_mem->mem_type) {
	case TTM_PL_VRAM:
		old_start += rdev->mc.vram_start;
		break;
	case TTM_PL_TT:
		old_start += rdev->mc.gtt_start;
		break;
	default:
		FUNC1("Unknown placement %d\n", old_mem->mem_type);
		return -EINVAL;
	}
	switch (new_mem->mem_type) {
	case TTM_PL_VRAM:
		new_start += rdev->mc.vram_start;
		break;
	case TTM_PL_TT:
		new_start += rdev->mc.gtt_start;
		break;
	default:
		FUNC1("Unknown placement %d\n", old_mem->mem_type);
		return -EINVAL;
	}
	if (!rdev->ring[ridx].ready) {
		FUNC1("Trying to move memory with ring turned off.\n");
		return -EINVAL;
	}

	FUNC0((PAGE_SIZE % RADEON_GPU_PAGE_SIZE) != 0);

	num_pages = new_mem->num_pages * (PAGE_SIZE / RADEON_GPU_PAGE_SIZE);
	fence = FUNC4(rdev, old_start, new_start, num_pages, bo->base.resv);
	if (FUNC2(fence))
		return FUNC3(fence);

	r = FUNC8(bo, &fence->base, evict, new_mem);
	FUNC6(&fence);
	return r;
}