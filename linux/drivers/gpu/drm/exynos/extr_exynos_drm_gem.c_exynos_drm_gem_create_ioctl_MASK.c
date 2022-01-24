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
struct exynos_drm_gem {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_gem_create {int /*<<< orphan*/  handle; int /*<<< orphan*/  size; int /*<<< orphan*/  flags; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct exynos_drm_gem*) ; 
 int FUNC1 (struct exynos_drm_gem*) ; 
 struct exynos_drm_gem* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_gem*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct drm_file*,int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, void *data,
				struct drm_file *file_priv)
{
	struct drm_exynos_gem_create *args = data;
	struct exynos_drm_gem *exynos_gem;
	int ret;

	exynos_gem = FUNC2(dev, args->flags, args->size);
	if (FUNC0(exynos_gem))
		return FUNC1(exynos_gem);

	ret = FUNC4(&exynos_gem->base, file_priv,
					   &args->handle);
	if (ret) {
		FUNC3(exynos_gem);
		return ret;
	}

	return 0;
}