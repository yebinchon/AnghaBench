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
struct drm_gem_object {int /*<<< orphan*/  filp; } ;
struct exynos_drm_gem {unsigned long size; struct drm_gem_object base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 struct exynos_drm_gem* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct drm_device*,struct drm_gem_object*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_drm_gem*) ; 
 struct exynos_drm_gem* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct exynos_drm_gem *FUNC8(struct drm_device *dev,
						  unsigned long size)
{
	struct exynos_drm_gem *exynos_gem;
	struct drm_gem_object *obj;
	int ret;

	exynos_gem = FUNC7(sizeof(*exynos_gem), GFP_KERNEL);
	if (!exynos_gem)
		return FUNC2(-ENOMEM);

	exynos_gem->size = size;
	obj = &exynos_gem->base;

	ret = FUNC4(dev, obj, size);
	if (ret < 0) {
		FUNC1(dev->dev, "failed to initialize gem object\n");
		FUNC6(exynos_gem);
		return FUNC2(ret);
	}

	ret = FUNC3(obj);
	if (ret < 0) {
		FUNC5(obj);
		FUNC6(exynos_gem);
		return FUNC2(ret);
	}

	FUNC0(dev->dev, "created file object = %pK\n", obj->filp);

	return exynos_gem;
}