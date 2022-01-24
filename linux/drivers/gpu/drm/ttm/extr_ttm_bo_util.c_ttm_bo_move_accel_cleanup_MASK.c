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
struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; int /*<<< orphan*/ * mm_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {int /*<<< orphan*/ * ttm; TYPE_1__ base; int /*<<< orphan*/  moving; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int TTM_MEMTYPE_FLAG_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 
 int FUNC6 (struct ttm_buffer_object*,int,int) ; 
 int FUNC7 (struct ttm_buffer_object*,struct ttm_buffer_object**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ttm_buffer_object *bo,
			      struct dma_fence *fence,
			      bool evict,
			      struct ttm_mem_reg *new_mem)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_type_manager *man = &bdev->man[new_mem->mem_type];
	struct ttm_mem_reg *old_mem = &bo->mem;
	int ret;
	struct ttm_buffer_object *ghost_obj;

	FUNC2(bo->base.resv, fence);
	if (evict) {
		ret = FUNC6(bo, false, false);
		if (ret)
			return ret;

		if (man->flags & TTM_MEMTYPE_FLAG_FIXED) {
			FUNC8(bo->ttm);
			bo->ttm = NULL;
		}
		FUNC3(bo);
	} else {
		/**
		 * This should help pipeline ordinary buffer moves.
		 *
		 * Hang old buffer memory on a new buffer object,
		 * and leave it to be released when the GPU
		 * operation has completed.
		 */

		FUNC1(bo->moving);
		bo->moving = FUNC0(fence);

		ret = FUNC7(bo, &ghost_obj);
		if (ret)
			return ret;

		FUNC2(ghost_obj->base.resv, fence);

		/**
		 * If we're not moving to fixed memory, the TTM object
		 * needs to stay alive. Otherwhise hang it on the ghost
		 * bo to be unbound and destroyed.
		 */

		if (!(man->flags & TTM_MEMTYPE_FLAG_FIXED))
			ghost_obj->ttm = NULL;
		else
			bo->ttm = NULL;

		FUNC5(ghost_obj);
		FUNC4(ghost_obj);
	}

	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	return 0;
}