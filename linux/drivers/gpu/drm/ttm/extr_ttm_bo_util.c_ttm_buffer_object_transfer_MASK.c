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
struct TYPE_8__ {int /*<<< orphan*/ * resv; int /*<<< orphan*/  _resv; int /*<<< orphan*/  vma_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {TYPE_4__ base; scalar_t__ acc_size; int /*<<< orphan*/ * destroy; int /*<<< orphan*/  kref; int /*<<< orphan*/  list_kref; int /*<<< orphan*/  cpu_writers; int /*<<< orphan*/ * moving; int /*<<< orphan*/  wu_mutex; int /*<<< orphan*/  io_reserve_lru; int /*<<< orphan*/  swap; int /*<<< orphan*/  lru; int /*<<< orphan*/  ddestroy; TYPE_3__* bdev; TYPE_1__ mem; } ;
struct ttm_transfer_obj {struct ttm_buffer_object base; struct ttm_buffer_object* bo; } ;
struct TYPE_7__ {TYPE_2__* glob; } ;
struct TYPE_6__ {int /*<<< orphan*/  bo_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TTM_PL_FLAG_NO_EVICT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ttm_transfer_obj* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  ttm_transfered_destroy ; 

__attribute__((used)) static int FUNC11(struct ttm_buffer_object *bo,
				      struct ttm_buffer_object **new_obj)
{
	struct ttm_transfer_obj *fbo;
	int ret;

	fbo = FUNC7(sizeof(*fbo), GFP_KERNEL);
	if (!fbo)
		return -ENOMEM;

	fbo->base = *bo;
	fbo->base.mem.placement |= TTM_PL_FLAG_NO_EVICT;

	FUNC10(bo);
	fbo->bo = bo;

	/**
	 * Fix up members that we shouldn't copy directly:
	 * TODO: Explicit member copy would probably be better here.
	 */

	FUNC2(&bo->bdev->glob->bo_count);
	FUNC0(&fbo->base.ddestroy);
	FUNC0(&fbo->base.lru);
	FUNC0(&fbo->base.swap);
	FUNC0(&fbo->base.io_reserve_lru);
	FUNC9(&fbo->base.wu_mutex);
	fbo->base.moving = NULL;
	FUNC6(&fbo->base.base.vma_node);
	FUNC3(&fbo->base.cpu_writers, 0);

	FUNC8(&fbo->base.list_kref);
	FUNC8(&fbo->base.kref);
	fbo->base.destroy = &ttm_transfered_destroy;
	fbo->base.acc_size = 0;
	fbo->base.base.resv = &fbo->base.base._resv;
	FUNC4(fbo->base.base.resv);
	ret = FUNC5(fbo->base.base.resv);
	FUNC1(!ret);

	*new_obj = &fbo->base;
	return 0;
}