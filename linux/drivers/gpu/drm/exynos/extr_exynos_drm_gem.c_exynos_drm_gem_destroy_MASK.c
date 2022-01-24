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
struct drm_gem_object {scalar_t__ import_attach; int /*<<< orphan*/  handle_count; int /*<<< orphan*/  dev; } ;
struct exynos_drm_gem {int /*<<< orphan*/  sgt; struct drm_gem_object base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct exynos_drm_gem *exynos_gem)
{
	struct drm_gem_object *obj = &exynos_gem->base;

	FUNC0(FUNC5(obj->dev), "handle count = %d\n",
			  obj->handle_count);

	/*
	 * do not release memory region from exporter.
	 *
	 * the region will be released by exporter
	 * once dmabuf's refcount becomes 0.
	 */
	if (obj->import_attach)
		FUNC2(obj, exynos_gem->sgt);
	else
		FUNC3(exynos_gem);

	/* release file pointer to gem object. */
	FUNC1(obj);

	FUNC4(exynos_gem);
}