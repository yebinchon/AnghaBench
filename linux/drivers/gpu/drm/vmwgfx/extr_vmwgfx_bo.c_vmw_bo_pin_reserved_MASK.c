#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {TYPE_2__ mem; TYPE_1__ base; } ;
struct vmw_buffer_object {scalar_t__ pin_count; struct ttm_buffer_object base; } ;
struct ttm_placement {int num_placement; struct ttm_place* placement; } ;
struct ttm_place {int flags; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
typedef  int /*<<< orphan*/  placement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TTM_PL_FLAG_CACHED ; 
 int TTM_PL_FLAG_NO_EVICT ; 
 int TTM_PL_FLAG_SYSTEM ; 
 int TTM_PL_FLAG_VRAM ; 
 int VMW_PL_FLAG_GMR ; 
 int VMW_PL_FLAG_MOB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_placement*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_operation_ctx*) ; 

void FUNC5(struct vmw_buffer_object *vbo, bool pin)
{
	struct ttm_operation_ctx ctx = { false, true };
	struct ttm_place pl;
	struct ttm_placement placement;
	struct ttm_buffer_object *bo = &vbo->base;
	uint32_t old_mem_type = bo->mem.mem_type;
	int ret;

	FUNC2(bo->base.resv);

	if (pin) {
		if (vbo->pin_count++ > 0)
			return;
	} else {
		FUNC1(vbo->pin_count <= 0);
		if (--vbo->pin_count > 0)
			return;
	}

	pl.fpfn = 0;
	pl.lpfn = 0;
	pl.flags = TTM_PL_FLAG_VRAM | VMW_PL_FLAG_GMR | VMW_PL_FLAG_MOB
		| TTM_PL_FLAG_SYSTEM | TTM_PL_FLAG_CACHED;
	if (pin)
		pl.flags |= TTM_PL_FLAG_NO_EVICT;

	FUNC3(&placement, 0, sizeof(placement));
	placement.num_placement = 1;
	placement.placement = &pl;

	ret = FUNC4(bo, &placement, &ctx);

	FUNC0(ret != 0 || bo->mem.mem_type != old_mem_type);
}