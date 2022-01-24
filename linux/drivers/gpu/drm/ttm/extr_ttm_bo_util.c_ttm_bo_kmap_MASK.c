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
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_iomem; } ;
struct TYPE_6__ {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_buffer_object {unsigned long num_pages; TYPE_3__ mem; TYPE_2__* bdev; } ;
struct ttm_bo_kmap_obj {struct ttm_buffer_object* bo; int /*<<< orphan*/ * virtual; } ;
struct TYPE_5__ {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct ttm_buffer_object*,unsigned long,unsigned long,struct ttm_bo_kmap_obj*) ; 
 int FUNC1 (struct ttm_buffer_object*,unsigned long,unsigned long,struct ttm_bo_kmap_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_mem_type_manager*,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_type_manager*) ; 

int FUNC5(struct ttm_buffer_object *bo,
		unsigned long start_page, unsigned long num_pages,
		struct ttm_bo_kmap_obj *map)
{
	struct ttm_mem_type_manager *man =
		&bo->bdev->man[bo->mem.mem_type];
	unsigned long offset, size;
	int ret;

	map->virtual = NULL;
	map->bo = bo;
	if (num_pages > bo->num_pages)
		return -EINVAL;
	if (start_page > bo->num_pages)
		return -EINVAL;

	(void) FUNC2(man, false);
	ret = FUNC3(bo->bdev, &bo->mem);
	FUNC4(man);
	if (ret)
		return ret;
	if (!bo->mem.bus.is_iomem) {
		return FUNC1(bo, start_page, num_pages, map);
	} else {
		offset = start_page << PAGE_SHIFT;
		size = num_pages << PAGE_SHIFT;
		return FUNC0(bo, offset, size, map);
	}
}