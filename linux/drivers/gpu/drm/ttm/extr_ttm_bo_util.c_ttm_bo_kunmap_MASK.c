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
struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {size_t mem_type; } ;
struct ttm_buffer_object {TYPE_2__ mem; TYPE_1__* bdev; } ;
struct ttm_bo_kmap_obj {int bo_kmap_type; int /*<<< orphan*/ * page; int /*<<< orphan*/ * virtual; struct ttm_buffer_object* bo; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  ttm_bo_map_iomap 131 
#define  ttm_bo_map_kmap 130 
#define  ttm_bo_map_premapped 129 
#define  ttm_bo_map_vmap 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_type_manager*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_mem_type_manager*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ttm_bo_kmap_obj *map)
{
	struct ttm_buffer_object *bo = map->bo;
	struct ttm_mem_type_manager *man =
		&bo->bdev->man[bo->mem.mem_type];

	if (!map->virtual)
		return;
	switch (map->bo_kmap_type) {
	case ttm_bo_map_iomap:
		FUNC1(map->virtual);
		break;
	case ttm_bo_map_vmap:
		FUNC6(map->virtual);
		break;
	case ttm_bo_map_kmap:
		FUNC2(map->page);
		break;
	case ttm_bo_map_premapped:
		break;
	default:
		FUNC0();
	}
	(void) FUNC4(man, false);
	FUNC3(map->bo->bdev, &map->bo->mem);
	FUNC5(man);
	map->virtual = NULL;
	map->page = NULL;
}