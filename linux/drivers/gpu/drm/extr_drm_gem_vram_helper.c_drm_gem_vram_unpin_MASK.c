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
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_4__ {int num_placement; } ;
struct drm_gem_vram_object {int /*<<< orphan*/  bo; TYPE_2__ placement; TYPE_1__* placements; scalar_t__ pin_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_NO_EVICT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,struct ttm_operation_ctx*) ; 

int FUNC4(struct drm_gem_vram_object *gbo)
{
	int i, ret;
	struct ttm_operation_ctx ctx = { false, false };

	ret = FUNC1(&gbo->bo, true, false, NULL);
	if (ret < 0)
		return ret;

	if (FUNC0(!gbo->pin_count))
		goto out;

	--gbo->pin_count;
	if (gbo->pin_count)
		goto out;

	for (i = 0; i < gbo->placement.num_placement ; ++i)
		gbo->placements[i].flags &= ~TTM_PL_FLAG_NO_EVICT;

	ret = FUNC3(&gbo->bo, &gbo->placement, &ctx);
	if (ret < 0)
		goto err_ttm_bo_unreserve;

out:
	FUNC2(&gbo->bo);

	return 0;

err_ttm_bo_unreserve:
	FUNC2(&gbo->bo);
	return ret;
}