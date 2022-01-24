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
struct dma_resv {int dummy; } ;
struct TYPE_4__ {struct dma_resv* resv; struct dma_resv _resv; } ;
struct ttm_buffer_object {TYPE_2__ base; int /*<<< orphan*/  list_kref; int /*<<< orphan*/  ddestroy; TYPE_1__* bdev; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct TYPE_3__ {struct ttm_bo_global* glob; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct dma_resv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_resv*) ; 
 long FUNC3 (struct dma_resv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  ttm_bo_ref_bug ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ttm_buffer_object *bo,
			       bool interruptible, bool no_wait_gpu,
			       bool unlock_resv)
{
	struct ttm_bo_global *glob = bo->bdev->glob;
	struct dma_resv *resv;
	int ret;

	if (FUNC11(FUNC6(&bo->ddestroy)))
		resv = bo->base.resv;
	else
		resv = &bo->base._resv;

	if (FUNC0(resv, true))
		ret = 0;
	else
		ret = -EBUSY;

	if (ret && !no_wait_gpu) {
		long lret;

		if (unlock_resv)
			FUNC2(bo->base.resv);
		FUNC8(&glob->lru_lock);

		lret = FUNC3(resv, true,
							   interruptible,
							   30 * HZ);

		if (lret < 0)
			return lret;
		else if (lret == 0)
			return -EBUSY;

		FUNC7(&glob->lru_lock);
		if (unlock_resv && !FUNC1(bo->base.resv)) {
			/*
			 * We raced, and lost, someone else holds the reservation now,
			 * and is probably busy in ttm_bo_cleanup_memtype_use.
			 *
			 * Even if it's not the case, because we finished waiting any
			 * delayed destruction would succeed, so just return success
			 * here.
			 */
			FUNC8(&glob->lru_lock);
			return 0;
		}
		ret = 0;
	}

	if (ret || FUNC11(FUNC6(&bo->ddestroy))) {
		if (unlock_resv)
			FUNC2(bo->base.resv);
		FUNC8(&glob->lru_lock);
		return ret;
	}

	FUNC10(bo);
	FUNC5(&bo->ddestroy);
	FUNC4(&bo->list_kref, ttm_bo_ref_bug);

	FUNC8(&glob->lru_lock);
	FUNC9(bo);

	if (unlock_resv)
		FUNC2(bo->base.resv);

	return 0;
}