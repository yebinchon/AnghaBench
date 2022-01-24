#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_bo_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * funcs; } ;
struct TYPE_4__ {TYPE_2__ base; struct ttm_bo_device* bdev; } ;
struct drm_gem_vram_object {TYPE_1__ bo; int /*<<< orphan*/  placement; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int TTM_PL_FLAG_SYSTEM ; 
 int TTM_PL_FLAG_VRAM ; 
 int FUNC0 (struct drm_device*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  drm_gem_vram_object_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_vram_object*,int) ; 
 size_t FUNC3 (struct ttm_bo_device*,size_t,int) ; 
 int FUNC4 (struct ttm_bo_device*,TYPE_1__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 
 int /*<<< orphan*/  ttm_buffer_object_destroy ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev,
			     struct ttm_bo_device *bdev,
			     struct drm_gem_vram_object *gbo,
			     size_t size, unsigned long pg_align,
			     bool interruptible)
{
	int ret;
	size_t acc_size;

	if (!gbo->bo.base.funcs)
		gbo->bo.base.funcs = &drm_gem_vram_object_funcs;

	ret = FUNC0(dev, &gbo->bo.base, size);
	if (ret)
		return ret;

	acc_size = FUNC3(bdev, size, sizeof(*gbo));

	gbo->bo.bdev = bdev;
	FUNC2(gbo, TTM_PL_FLAG_VRAM | TTM_PL_FLAG_SYSTEM);

	ret = FUNC4(bdev, &gbo->bo, size, ttm_bo_type_device,
			  &gbo->placement, pg_align, interruptible, acc_size,
			  NULL, NULL, ttm_buffer_object_destroy);
	if (ret)
		goto err_drm_gem_object_release;

	return 0;

err_drm_gem_object_release:
	FUNC1(&gbo->bo.base);
	return ret;
}