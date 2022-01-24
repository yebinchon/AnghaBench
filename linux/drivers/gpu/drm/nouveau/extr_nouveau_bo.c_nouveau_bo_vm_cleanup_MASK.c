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
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct nouveau_drm_tile*,struct dma_fence*) ; 

__attribute__((used)) static void
FUNC3(struct ttm_buffer_object *bo,
		      struct nouveau_drm_tile *new_tile,
		      struct nouveau_drm_tile **old_tile)
{
	struct nouveau_drm *drm = FUNC1(bo->bdev);
	struct drm_device *dev = drm->dev;
	struct dma_fence *fence = FUNC0(bo->base.resv);

	FUNC2(dev, *old_tile, fence);
	*old_tile = new_tile;
}