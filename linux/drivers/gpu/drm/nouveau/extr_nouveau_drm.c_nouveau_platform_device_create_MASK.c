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
 struct drm_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  driver_platform ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_config ; 
 int /*<<< orphan*/  nouveau_debug ; 
 int FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device**) ; 
 int FUNC7 (struct nvkm_device_tegra_func const*,struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned long long,struct nvkm_device**) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct drm_device*) ; 

struct drm_device *
FUNC9(const struct nvkm_device_tegra_func *func,
			       struct platform_device *pdev,
			       struct nvkm_device **pdevice)
{
	struct drm_device *drm;
	int err;

	err = FUNC7(func, pdev, nouveau_config, nouveau_debug,
				    true, true, ~0ULL, pdevice);
	if (err)
		goto err_free;

	drm = FUNC3(&driver_platform, &pdev->dev);
	if (FUNC1(drm)) {
		err = FUNC2(drm);
		goto err_free;
	}

	err = FUNC5(drm);
	if (err)
		goto err_put;

	FUNC8(pdev, drm);

	return drm;

err_put:
	FUNC4(drm);
err_free:
	FUNC6(pdevice);

	return FUNC0(err);
}