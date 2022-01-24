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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct nvkm_device_tegra_func {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC4 (struct nvkm_device_tegra_func const*,struct platform_device*,struct nvkm_device**) ; 
 struct nvkm_device_tegra_func* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct nvkm_device_tegra_func *func;
	struct nvkm_device *device = NULL;
	struct drm_device *drm;
	int ret;

	func = FUNC5(&pdev->dev);

	drm = FUNC4(func, pdev, &device);
	if (FUNC0(drm))
		return FUNC1(drm);

	ret = FUNC3(drm, 0);
	if (ret < 0) {
		FUNC2(drm);
		return ret;
	}

	return 0;
}