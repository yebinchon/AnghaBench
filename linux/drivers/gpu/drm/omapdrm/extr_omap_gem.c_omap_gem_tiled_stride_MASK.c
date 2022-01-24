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
struct omap_gem_object {int flags; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP_BO_TILED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_gem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *obj, u32 orient)
{
	struct omap_gem_object *omap_obj = FUNC2(obj);
	int ret = -EINVAL;
	if (omap_obj->flags & OMAP_BO_TILED)
		ret = FUNC1(FUNC0(omap_obj->flags), orient);
	return ret;
}