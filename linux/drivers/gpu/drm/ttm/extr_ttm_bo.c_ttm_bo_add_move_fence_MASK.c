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
struct ttm_mem_type_manager {int /*<<< orphan*/  move_lock; int /*<<< orphan*/  move; } ;
struct ttm_mem_reg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {struct dma_fence* moving; TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ttm_buffer_object *bo,
				 struct ttm_mem_type_manager *man,
				 struct ttm_mem_reg *mem)
{
	struct dma_fence *fence;
	int ret;

	FUNC4(&man->move_lock);
	fence = FUNC0(man->move);
	FUNC5(&man->move_lock);

	if (fence) {
		FUNC2(bo->base.resv, fence);

		ret = FUNC3(bo->base.resv, 1);
		if (FUNC6(ret)) {
			FUNC1(fence);
			return ret;
		}

		FUNC1(bo->moving);
		bo->moving = fence;
	}

	return 0;
}