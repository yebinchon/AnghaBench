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
struct exynos_drm_gem {int /*<<< orphan*/  size; int /*<<< orphan*/  flags; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_gem_info {int /*<<< orphan*/  size; int /*<<< orphan*/  flags; int /*<<< orphan*/  handle; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct exynos_drm_gem* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_device *dev, void *data,
				      struct drm_file *file_priv)
{
	struct exynos_drm_gem *exynos_gem;
	struct drm_exynos_gem_info *args = data;
	struct drm_gem_object *obj;

	obj = FUNC1(file_priv, args->handle);
	if (!obj) {
		FUNC0(dev->dev, "failed to lookup gem object.\n");
		return -EINVAL;
	}

	exynos_gem = FUNC3(obj);

	args->flags = exynos_gem->flags;
	args->size = exynos_gem->size;

	FUNC2(obj);

	return 0;
}