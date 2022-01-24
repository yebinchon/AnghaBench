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
typedef  size_t uint32_t ;
struct ttm_place {int /*<<< orphan*/  flags; } ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_type_manager {int /*<<< orphan*/  use_type; int /*<<< orphan*/  has_type; } ;
struct ttm_mem_reg {size_t mem_type; size_t placement; } ;
struct TYPE_3__ {size_t mem_type; int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {struct ttm_bo_device* bdev; int /*<<< orphan*/  lru; TYPE_1__ mem; } ;
struct ttm_bo_device {TYPE_2__* glob; struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int /*<<< orphan*/  lru_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  TTM_PL_MASK_MEMTYPE ; 
 size_t TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_mem_type_manager*,size_t,struct ttm_place const*,size_t*) ; 
 size_t FUNC6 (struct ttm_mem_type_manager*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_place const*,size_t*) ; 

__attribute__((used)) static int FUNC9(struct ttm_buffer_object *bo,
				const struct ttm_place *place,
				struct ttm_mem_reg *mem,
				struct ttm_operation_ctx *ctx)
{
	struct ttm_bo_device *bdev = bo->bdev;
	uint32_t mem_type = TTM_PL_SYSTEM;
	struct ttm_mem_type_manager *man;
	uint32_t cur_flags = 0;
	int ret;

	ret = FUNC8(place, &mem_type);
	if (ret)
		return ret;

	man = &bdev->man[mem_type];
	if (!man->has_type || !man->use_type)
		return -EBUSY;

	if (!FUNC5(man, mem_type, place, &cur_flags))
		return -EBUSY;

	cur_flags = FUNC6(man, bo->mem.placement, cur_flags);
	/*
	 * Use the access and other non-mapping-related flag bits from
	 * the memory placement flags to the current flags
	 */
	FUNC7(&cur_flags, place->flags, ~TTM_PL_MASK_MEMTYPE);

	mem->mem_type = mem_type;
	mem->placement = cur_flags;

	if (bo->mem.mem_type < mem_type && !FUNC0(&bo->lru)) {
		FUNC1(&bo->bdev->glob->lru_lock);
		FUNC4(bo);
		FUNC3(bo, mem);
		FUNC2(&bo->bdev->glob->lru_lock);
	}

	return 0;
}