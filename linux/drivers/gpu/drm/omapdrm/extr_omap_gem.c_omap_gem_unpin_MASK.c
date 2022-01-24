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
struct omap_gem_object {scalar_t__ dma_addr_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * block; scalar_t__ dma_addr; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct omap_gem_object* FUNC5 (struct drm_gem_object*) ; 

void FUNC6(struct drm_gem_object *obj)
{
	struct omap_gem_object *omap_obj = FUNC5(obj);
	int ret;

	FUNC1(&omap_obj->lock);

	if (omap_obj->dma_addr_cnt > 0) {
		omap_obj->dma_addr_cnt--;
		if (omap_obj->dma_addr_cnt == 0) {
			ret = FUNC4(omap_obj->block);
			if (ret) {
				FUNC0(obj->dev->dev,
					"could not unpin pages: %d\n", ret);
			}
			ret = FUNC3(omap_obj->block);
			if (ret) {
				FUNC0(obj->dev->dev,
					"could not release unmap: %d\n", ret);
			}
			omap_obj->dma_addr = 0;
			omap_obj->block = NULL;
		}
	}

	FUNC2(&omap_obj->lock);
}