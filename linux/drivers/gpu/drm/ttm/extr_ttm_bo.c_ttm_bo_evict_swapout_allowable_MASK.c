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
struct ttm_operation_ctx {scalar_t__ resv; int flags; } ;
struct TYPE_2__ {scalar_t__ resv; } ;
struct ttm_buffer_object {TYPE_1__ base; int /*<<< orphan*/  ddestroy; } ;

/* Variables and functions */
 int TTM_OPT_FLAG_ALLOW_RES_EVICT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct ttm_buffer_object *bo,
			struct ttm_operation_ctx *ctx, bool *locked, bool *busy)
{
	bool ret = false;

	if (bo->base.resv == ctx->resv) {
		FUNC0(bo->base.resv);
		if (ctx->flags & TTM_OPT_FLAG_ALLOW_RES_EVICT
		    || !FUNC2(&bo->ddestroy))
			ret = true;
		*locked = false;
		if (busy)
			*busy = false;
	} else {
		ret = FUNC1(bo->base.resv);
		*locked = ret;
		if (busy)
			*busy = !ret;
	}

	return ret;
}