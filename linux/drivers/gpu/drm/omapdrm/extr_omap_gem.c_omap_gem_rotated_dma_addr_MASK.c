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
typedef  int /*<<< orphan*/  u32 ;
struct omap_gem_object {scalar_t__ dma_addr_cnt; int flags; int /*<<< orphan*/  lock; scalar_t__ block; } ;
struct drm_gem_object {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP_BO_TILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 struct omap_gem_object* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_gem_object *obj, u32 orient,
		int x, int y, dma_addr_t *dma_addr)
{
	struct omap_gem_object *omap_obj = FUNC3(obj);
	int ret = -EINVAL;

	FUNC0(&omap_obj->lock);

	if ((omap_obj->dma_addr_cnt > 0) && omap_obj->block &&
			(omap_obj->flags & OMAP_BO_TILED)) {
		*dma_addr = FUNC2(omap_obj->block, orient, x, y);
		ret = 0;
	}

	FUNC1(&omap_obj->lock);

	return ret;
}