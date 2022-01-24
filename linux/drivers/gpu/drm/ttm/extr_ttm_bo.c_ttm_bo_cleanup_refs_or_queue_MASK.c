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
struct TYPE_4__ {int /*<<< orphan*/  _resv; int /*<<< orphan*/ * resv; } ;
struct TYPE_3__ {int placement; } ;
struct ttm_buffer_object {int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  list_kref; TYPE_2__ base; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_device {int /*<<< orphan*/  wq; int /*<<< orphan*/  ddestroy; struct ttm_bo_global* glob; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int TTM_PL_FLAG_NO_EVICT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct ttm_buffer_object*) ; 
 int FUNC13 (struct ttm_buffer_object*) ; 

__attribute__((used)) static void FUNC14(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_bo_global *glob = bdev->glob;
	int ret;

	ret = FUNC13(bo);
	if (ret) {
		/* Last resort, if we fail to allocate memory for the
		 * fences block for the BO to become idle
		 */
		FUNC3(bo->base.resv, true, false,
						    30 * HZ);
		FUNC7(&glob->lru_lock);
		goto error;
	}

	FUNC7(&glob->lru_lock);
	ret = FUNC1(bo->base.resv) ? 0 : -EBUSY;
	if (!ret) {
		if (FUNC0(&bo->base._resv, true)) {
			FUNC11(bo);
			FUNC8(&glob->lru_lock);
			if (bo->base.resv != &bo->base._resv)
				FUNC2(&bo->base._resv);

			FUNC10(bo);
			FUNC2(bo->base.resv);
			return;
		}

		FUNC12(bo);

		/*
		 * Make NO_EVICT bos immediately available to
		 * shrinkers, now that they are queued for
		 * destruction.
		 */
		if (bo->mem.placement & TTM_PL_FLAG_NO_EVICT) {
			bo->mem.placement &= ~TTM_PL_FLAG_NO_EVICT;
			FUNC9(bo);
		}

		FUNC2(bo->base.resv);
	}
	if (bo->base.resv != &bo->base._resv)
		FUNC2(&bo->base._resv);

error:
	FUNC4(&bo->list_kref);
	FUNC5(&bo->ddestroy, &bdev->ddestroy);
	FUNC8(&glob->lru_lock);

	FUNC6(&bdev->wq,
			      ((HZ / 100) < 1) ? 1 : HZ / 100);
}