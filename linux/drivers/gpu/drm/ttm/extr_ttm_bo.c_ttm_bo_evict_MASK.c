#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_placement {scalar_t__ num_busy_placement; scalar_t__ num_placement; } ;
struct ttm_operation_ctx {int dummy; } ;
struct TYPE_6__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {TYPE_3__ bus; int /*<<< orphan*/ * mm_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {int evicted; struct ttm_mem_reg mem; TYPE_1__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_2__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* evict_flags ) (struct ttm_buffer_object*,struct ttm_placement*) ;} ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*,struct ttm_placement*) ; 
 int FUNC3 (struct ttm_buffer_object*,struct ttm_mem_reg*,int,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC5 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*,struct ttm_placement*) ; 
 int FUNC7 (struct ttm_buffer_object*) ; 
 int FUNC8 (struct ttm_buffer_object*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct ttm_buffer_object *bo,
			struct ttm_operation_ctx *ctx)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_reg evict_mem;
	struct ttm_placement placement;
	int ret = 0;

	FUNC0(bo->base.resv);

	placement.num_placement = 0;
	placement.num_busy_placement = 0;
	bdev->driver->evict_flags(bo, &placement);

	if (!placement.num_placement && !placement.num_busy_placement) {
		ret = FUNC7(bo);
		if (ret)
			return ret;

		return FUNC8(bo, false);
	}

	evict_mem = bo->mem;
	evict_mem.mm_node = NULL;
	evict_mem.bus.io_reserved_vm = false;
	evict_mem.bus.io_reserved_count = 0;

	ret = FUNC5(bo, &placement, &evict_mem, ctx);
	if (ret) {
		if (ret != -ERESTARTSYS) {
			FUNC1("Failed to find memory space for buffer 0x%p eviction\n",
			       bo);
			FUNC6(bo, &placement);
		}
		goto out;
	}

	ret = FUNC3(bo, &evict_mem, true, ctx);
	if (FUNC9(ret)) {
		if (ret != -ERESTARTSYS)
			FUNC1("Buffer eviction failed\n");
		FUNC4(bo, &evict_mem);
		goto out;
	}
	bo->evicted = true;
out:
	return ret;
}