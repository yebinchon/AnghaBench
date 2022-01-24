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
struct ttm_mem_reg {int /*<<< orphan*/  placement; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  ttm; int /*<<< orphan*/  bdev; struct ttm_mem_reg mem; } ;
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
 int FUNC6 (int /*<<< orphan*/ ,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ttm_buffer_object *bo, bool evict,
				struct ttm_operation_ctx *ctx,
				struct ttm_mem_reg *new_mem)
{
	struct amdgpu_device *adev;
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg tmp_mem;
	struct ttm_place placements;
	struct ttm_placement placement;
	int r;

	adev = FUNC1(bo->bdev);

	/* create space/pages for new_mem in GTT space */
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
	if (FUNC8(r)) {
		FUNC2("Failed to find GTT space for blit from VRAM\n");
		return r;
	}

	/* set caching flags */
	r = FUNC7(bo->ttm, tmp_mem.placement);
	if (FUNC8(r)) {
		goto out_cleanup;
	}

	/* Bind the memory to the GTT space */
	r = FUNC6(bo->ttm, &tmp_mem, ctx);
	if (FUNC8(r)) {
		goto out_cleanup;
	}

	/* blit VRAM to GTT */
	r = FUNC0(bo, evict, ctx->no_wait_gpu, &tmp_mem, old_mem);
	if (FUNC8(r)) {
		goto out_cleanup;
	}

	/* move BO (in tmp_mem) to new_mem */
	r = FUNC5(bo, ctx, new_mem);
out_cleanup:
	FUNC3(bo, &tmp_mem);
	return r;
}