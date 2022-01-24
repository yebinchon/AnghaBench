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
struct ttm_placement {int num_placement; int num_busy_placement; struct ttm_place* busy_placement; struct ttm_place* placement; } ;
struct ttm_place {int flags; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_mem_reg {int /*<<< orphan*/  placement; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  ttm; struct ttm_mem_reg mem; } ;

/* Variables and functions */
 int TTM_PL_FLAG_TT ; 
 int TTM_PL_MASK_CACHING ; 
 int FUNC0 (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC2 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int FUNC3 (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ttm_buffer_object *bo,
				bool evict, bool interruptible,
				bool no_wait_gpu,
				struct ttm_mem_reg *new_mem)
{
	struct ttm_operation_ctx ctx = { interruptible, no_wait_gpu };
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg tmp_mem;
	struct ttm_place placements;
	struct ttm_placement placement;
	int r;

	tmp_mem = *new_mem;
	tmp_mem.mm_node = NULL;
	placement.num_placement = 1;
	placement.placement = &placements;
	placement.num_busy_placement = 1;
	placement.busy_placement = &placements;
	placements.fpfn = 0;
	placements.lpfn = 0;
	placements.flags = TTM_PL_MASK_CACHING | TTM_PL_FLAG_TT;
	r = FUNC2(bo, &placement, &tmp_mem, &ctx);
	if (FUNC6(r)) {
		return r;
	}

	r = FUNC5(bo->ttm, tmp_mem.placement);
	if (FUNC6(r)) {
		goto out_cleanup;
	}

	r = FUNC4(bo->ttm, &tmp_mem, &ctx);
	if (FUNC6(r)) {
		goto out_cleanup;
	}
	r = FUNC0(bo, true, no_wait_gpu, &tmp_mem, old_mem);
	if (FUNC6(r)) {
		goto out_cleanup;
	}
	r = FUNC3(bo, &ctx, new_mem);
out_cleanup:
	FUNC1(bo, &tmp_mem);
	return r;
}