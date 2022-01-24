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
struct ttm_mem_type_manager {int flags; int /*<<< orphan*/  move_lock; void* move; } ;
struct ttm_mem_reg {size_t mem_type; int /*<<< orphan*/ * mm_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {int /*<<< orphan*/ * ttm; void* moving; TYPE_1__ base; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int TTM_MEMTYPE_FLAG_FIXED ; 
 void* FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_buffer_object*) ; 
 int FUNC9 (struct ttm_buffer_object*,int,int) ; 
 int FUNC10 (struct ttm_buffer_object*,struct ttm_buffer_object**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ttm_buffer_object *bo,
			 struct dma_fence *fence, bool evict,
			 struct ttm_mem_reg *new_mem)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_reg *old_mem = &bo->mem;

	struct ttm_mem_type_manager *from = &bdev->man[old_mem->mem_type];
	struct ttm_mem_type_manager *to = &bdev->man[new_mem->mem_type];

	int ret;

	FUNC3(bo->base.resv, fence);

	if (!evict) {
		struct ttm_buffer_object *ghost_obj;

		/**
		 * This should help pipeline ordinary buffer moves.
		 *
		 * Hang old buffer memory on a new buffer object,
		 * and leave it to be released when the GPU
		 * operation has completed.
		 */

		FUNC2(bo->moving);
		bo->moving = FUNC0(fence);

		ret = FUNC10(bo, &ghost_obj);
		if (ret)
			return ret;

		FUNC3(ghost_obj->base.resv, fence);

		/**
		 * If we're not moving to fixed memory, the TTM object
		 * needs to stay alive. Otherwhise hang it on the ghost
		 * bo to be unbound and destroyed.
		 */

		if (!(to->flags & TTM_MEMTYPE_FLAG_FIXED))
			ghost_obj->ttm = NULL;
		else
			bo->ttm = NULL;

		FUNC8(ghost_obj);
		FUNC7(ghost_obj);

	} else if (from->flags & TTM_MEMTYPE_FLAG_FIXED) {

		/**
		 * BO doesn't have a TTM we need to bind/unbind. Just remember
		 * this eviction and free up the allocation
		 */

		FUNC4(&from->move_lock);
		if (!from->move || FUNC1(fence, from->move)) {
			FUNC2(from->move);
			from->move = FUNC0(fence);
		}
		FUNC5(&from->move_lock);

		FUNC6(bo);

		FUNC2(bo->moving);
		bo->moving = FUNC0(fence);

	} else {
		/**
		 * Last resort, wait for the move to be completed.
		 *
		 * Should never happen in pratice.
		 */

		ret = FUNC9(bo, false, false);
		if (ret)
			return ret;

		if (to->flags & TTM_MEMTYPE_FLAG_FIXED) {
			FUNC11(bo->ttm);
			bo->ttm = NULL;
		}
		FUNC6(bo);
	}

	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	return 0;
}