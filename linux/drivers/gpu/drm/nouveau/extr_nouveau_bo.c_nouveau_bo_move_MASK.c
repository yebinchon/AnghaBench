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
struct ttm_operation_ctx {int /*<<< orphan*/  no_wait_gpu; int /*<<< orphan*/  interruptible; } ;
struct ttm_mem_reg {scalar_t__ mem_type; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int /*<<< orphan*/  ttm; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct TYPE_8__ {TYPE_3__ device; } ;
struct TYPE_5__ {scalar_t__ move; } ;
struct nouveau_drm {TYPE_4__ client; TYPE_1__ ttm; } ;
struct nouveau_bo {struct nouveau_drm_tile* tile; scalar_t__ pin_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,struct nouveau_bo*) ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 
 int FUNC5 (struct ttm_buffer_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 
 int FUNC6 (struct ttm_buffer_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 
 int FUNC7 (struct ttm_buffer_object*,struct ttm_mem_reg*,struct nouveau_drm_tile**) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_buffer_object*,struct nouveau_drm_tile*,struct nouveau_drm_tile**) ; 
 int FUNC9 (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ; 
 int FUNC10 (struct ttm_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct ttm_buffer_object *bo, bool evict,
		struct ttm_operation_ctx *ctx,
		struct ttm_mem_reg *new_reg)
{
	struct nouveau_drm *drm = FUNC2(bo->bdev);
	struct nouveau_bo *nvbo = FUNC3(bo);
	struct ttm_mem_reg *old_reg = &bo->mem;
	struct nouveau_drm_tile *new_tile = NULL;
	int ret = 0;

	ret = FUNC10(bo, ctx->interruptible, ctx->no_wait_gpu);
	if (ret)
		return ret;

	if (nvbo->pin_refcnt)
		FUNC1(drm, "Moving pinned object %p!\n", nvbo);

	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
		ret = FUNC7(bo, new_reg, &new_tile);
		if (ret)
			return ret;
	}

	/* Fake bo copy. */
	if (old_reg->mem_type == TTM_PL_SYSTEM && !bo->ttm) {
		FUNC0(bo->mem.mm_node != NULL);
		bo->mem = *new_reg;
		new_reg->mm_node = NULL;
		goto out;
	}

	/* Hardware assisted copy. */
	if (drm->ttm.move) {
		if (new_reg->mem_type == TTM_PL_SYSTEM)
			ret = FUNC4(bo, evict,
						    ctx->interruptible,
						    ctx->no_wait_gpu, new_reg);
		else if (old_reg->mem_type == TTM_PL_SYSTEM)
			ret = FUNC5(bo, evict,
						    ctx->interruptible,
						    ctx->no_wait_gpu, new_reg);
		else
			ret = FUNC6(bo, evict,
						   ctx->interruptible,
						   ctx->no_wait_gpu, new_reg);
		if (!ret)
			goto out;
	}

	/* Fallback to software copy. */
	ret = FUNC10(bo, ctx->interruptible, ctx->no_wait_gpu);
	if (ret == 0)
		ret = FUNC9(bo, ctx, new_reg);

out:
	if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
		if (ret)
			FUNC8(bo, NULL, &new_tile);
		else
			FUNC8(bo, new_tile, &nvbo->tile);
	}

	return ret;
}