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
struct page {int dummy; } ;
struct omap_gem_object {int /*<<< orphan*/  lock; struct page** pages; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_gem_object*) ; 
 struct omap_gem_object* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_gem_object *obj, struct page ***pages,
		bool remap)
{
	struct omap_gem_object *omap_obj = FUNC3(obj);
	int ret = 0;

	FUNC0(&omap_obj->lock);

	if (remap) {
		ret = FUNC2(obj);
		if (ret)
			goto unlock;
	}

	if (!omap_obj->pages) {
		ret = -ENOMEM;
		goto unlock;
	}

	*pages = omap_obj->pages;

unlock:
	FUNC1(&omap_obj->lock);

	return ret;
}