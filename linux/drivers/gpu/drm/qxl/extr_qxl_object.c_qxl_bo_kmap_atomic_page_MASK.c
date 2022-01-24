#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_type_manager {int dummy; } ;
struct qxl_device {struct io_mapping* surface_mapping; struct io_mapping* vram_mapping; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_8__ {size_t mem_type; TYPE_1__ bus; } ;
struct TYPE_6__ {TYPE_4__ mem; TYPE_3__* bdev; } ;
struct qxl_bo {void* kptr; TYPE_2__ tbo; } ;
struct io_mapping {int dummy; } ;
struct TYPE_7__ {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 size_t TTM_PL_PRIV ; 
 size_t TTM_PL_VRAM ; 
 void* FUNC0 (struct io_mapping*,scalar_t__) ; 
 int FUNC1 (struct qxl_bo*,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_mem_type_manager*,int) ; 
 int FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_type_manager*) ; 

void *FUNC5(struct qxl_device *qdev,
			      struct qxl_bo *bo, int page_offset)
{
	struct ttm_mem_type_manager *man = &bo->tbo.bdev->man[bo->tbo.mem.mem_type];
	void *rptr;
	int ret;
	struct io_mapping *map;

	if (bo->tbo.mem.mem_type == TTM_PL_VRAM)
		map = qdev->vram_mapping;
	else if (bo->tbo.mem.mem_type == TTM_PL_PRIV)
		map = qdev->surface_mapping;
	else
		goto fallback;

	(void) FUNC2(man, false);
	ret = FUNC3(bo->tbo.bdev, &bo->tbo.mem);
	FUNC4(man);

	return FUNC0(map, bo->tbo.mem.bus.offset + page_offset);
fallback:
	if (bo->kptr) {
		rptr = bo->kptr + (page_offset * PAGE_SIZE);
		return rptr;
	}

	ret = FUNC1(bo, &rptr);
	if (ret)
		return NULL;

	rptr += page_offset * PAGE_SIZE;
	return rptr;
}