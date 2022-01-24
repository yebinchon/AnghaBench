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
struct ttm_operation_ctx {int /*<<< orphan*/  no_wait_gpu; int /*<<< orphan*/  interruptible; } ;
struct ttm_mem_reg {scalar_t__ mem_type; } ;
struct ttm_buffer_object {int /*<<< orphan*/ * ttm; struct ttm_mem_reg mem; } ;

/* Variables and functions */
 scalar_t__ TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC1 (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ; 
 int FUNC2 (struct ttm_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ttm_buffer_object *bo, bool evict,
		       struct ttm_operation_ctx *ctx,
		       struct ttm_mem_reg *new_mem)
{
	struct ttm_mem_reg *old_mem = &bo->mem;
	int ret;

	ret = FUNC2(bo, ctx->interruptible, ctx->no_wait_gpu);
	if (ret)
		return ret;

	if (old_mem->mem_type == TTM_PL_SYSTEM && bo->ttm == NULL) {
		FUNC0(bo, new_mem);
		return 0;
	}
	return FUNC1(bo, ctx, new_mem);
}