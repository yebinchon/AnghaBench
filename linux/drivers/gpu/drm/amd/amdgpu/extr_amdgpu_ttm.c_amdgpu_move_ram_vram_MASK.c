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
struct ttm_operation_ctx {int /*<<< orphan*/  no_wait_gpu; } ;
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; struct ttm_mem_reg mem; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int TTM_PL_FLAG_TT ; 
 int TTM_PL_MASK_CACHING ; 
 int FUNC0 (struct ttm_buffer_object*,int,int /*<<< orphan*/ ,struct ttm_mem_reg*,struct ttm_mem_reg*) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC4 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int FUNC5 (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ttm_buffer_object *bo, bool evict,
				struct ttm_operation_ctx *ctx,
				struct ttm_mem_reg *new_mem)
{
	struct amdgpu_device *adev;
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg tmp_mem;
	struct ttm_placement placement;
	struct ttm_place placements;
	int r;

	adev = FUNC1(bo->bdev);

	/* make space in GTT for old_mem buffer */
	tmp_mem = *new_mem;
	tmp_mem.mm_node = NULL;
	placement.num_placement = 1;
	placement.placement = &placements;
	placement.num_busy_placement = 1;
	placement.busy_placement = &placements;
	placements.fpfn = 0;
	placements.lpfn = 0;
	placements.flags = TTM_PL_MASK_CACHING | TTM_PL_FLAG_TT;
	r = FUNC4(bo, &placement, &tmp_mem, ctx);
	if (FUNC6(r)) {
		FUNC2("Failed to find GTT space for blit to VRAM\n");
		return r;
	}

	/* move/bind old memory to GTT space */
	r = FUNC5(bo, ctx, &tmp_mem);
	if (FUNC6(r)) {
		goto out_cleanup;
	}

	/* copy to VRAM */
	r = FUNC0(bo, evict, ctx->no_wait_gpu, new_mem, old_mem);
	if (FUNC6(r)) {
		goto out_cleanup;
	}
out_cleanup:
	FUNC3(bo, &tmp_mem);
	return r;
}