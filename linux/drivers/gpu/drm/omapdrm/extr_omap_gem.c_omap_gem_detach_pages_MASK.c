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
struct omap_gem_object {int /*<<< orphan*/ * pages; scalar_t__* dma_addrs; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {unsigned int size; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct omap_gem_object* FUNC4 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC5(struct drm_gem_object *obj)
{
	struct omap_gem_object *omap_obj = FUNC4(obj);
	unsigned int npages = obj->size >> PAGE_SHIFT;
	unsigned int i;

	FUNC3(&omap_obj->lock);

	for (i = 0; i < npages; i++) {
		if (omap_obj->dma_addrs[i])
			FUNC0(obj->dev->dev, omap_obj->dma_addrs[i],
				       PAGE_SIZE, DMA_TO_DEVICE);
	}

	FUNC2(omap_obj->dma_addrs);
	omap_obj->dma_addrs = NULL;

	FUNC1(obj, omap_obj->pages, true, false);
	omap_obj->pages = NULL;
}