#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ dev; } ;
struct ttm_buffer_object {TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_bo {scalar_t__ pin_refcnt; int /*<<< orphan*/  tile; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*) ; 
 struct nouveau_drm* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC4 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ttm_buffer_object *bo)
{
	struct nouveau_drm *drm = FUNC3(bo->bdev);
	struct drm_device *dev = drm->dev;
	struct nouveau_bo *nvbo = FUNC4(bo);

	FUNC0(nvbo->pin_refcnt > 0);
	FUNC5(dev, nvbo->tile, NULL);

	/*
	 * If nouveau_bo_new() allocated this buffer, the GEM object was never
	 * initialized, so don't attempt to release it.
	 */
	if (bo->base.dev)
		FUNC1(&bo->base);

	FUNC2(nvbo);
}