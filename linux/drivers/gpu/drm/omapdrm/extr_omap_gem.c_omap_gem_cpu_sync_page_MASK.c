#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct omap_gem_object {scalar_t__* dma_addrs; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_gem_object*) ; 
 struct omap_gem_object* FUNC2 (struct drm_gem_object*) ; 

void FUNC3(struct drm_gem_object *obj, int pgoff)
{
	struct drm_device *dev = obj->dev;
	struct omap_gem_object *omap_obj = FUNC2(obj);

	if (FUNC1(obj))
		return;

	if (omap_obj->dma_addrs[pgoff]) {
		FUNC0(dev->dev, omap_obj->dma_addrs[pgoff],
				PAGE_SIZE, DMA_TO_DEVICE);
		omap_obj->dma_addrs[pgoff] = 0;
	}
}