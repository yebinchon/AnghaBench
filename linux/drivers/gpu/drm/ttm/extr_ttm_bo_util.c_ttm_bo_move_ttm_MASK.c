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
struct ttm_tt {int dummy; } ;
struct ttm_operation_ctx {int /*<<< orphan*/  no_wait_gpu; int /*<<< orphan*/  interruptible; } ;
struct ttm_mem_reg {scalar_t__ mem_type; int /*<<< orphan*/ * mm_node; int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; struct ttm_tt* ttm; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TTM_PL_FLAG_SYSTEM ; 
 int /*<<< orphan*/  TTM_PL_MASK_MEM ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 int FUNC2 (struct ttm_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ttm_tt*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int FUNC5 (struct ttm_tt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_tt*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ttm_buffer_object *bo,
		   struct ttm_operation_ctx *ctx,
		    struct ttm_mem_reg *new_mem)
{
	struct ttm_tt *ttm = bo->ttm;
	struct ttm_mem_reg *old_mem = &bo->mem;
	int ret;

	if (old_mem->mem_type != TTM_PL_SYSTEM) {
		ret = FUNC2(bo, ctx->interruptible, ctx->no_wait_gpu);

		if (FUNC7(ret != 0)) {
			if (ret != -ERESTARTSYS)
				FUNC0("Failed to expire sync object before unbinding TTM\n");
			return ret;
		}

		FUNC6(ttm);
		FUNC1(bo);
		FUNC3(&old_mem->placement, TTM_PL_FLAG_SYSTEM,
				TTM_PL_MASK_MEM);
		old_mem->mem_type = TTM_PL_SYSTEM;
	}

	ret = FUNC5(ttm, new_mem->placement);
	if (FUNC7(ret != 0))
		return ret;

	if (new_mem->mem_type != TTM_PL_SYSTEM) {
		ret = FUNC4(ttm, new_mem, ctx);
		if (FUNC7(ret != 0))
			return ret;
	}

	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	return 0;
}