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
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct tegra_bo {int /*<<< orphan*/  gem; int /*<<< orphan*/  flags; TYPE_1__ tiling; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 unsigned long DRM_TEGRA_GEM_CREATE_BOTTOM_UP ; 
 unsigned long DRM_TEGRA_GEM_CREATE_TILED ; 
 struct tegra_bo* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tegra_bo*) ; 
 int /*<<< orphan*/  TEGRA_BO_BOTTOM_UP ; 
 int /*<<< orphan*/  TEGRA_BO_TILING_MODE_TILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_bo*) ; 
 int FUNC4 (struct drm_device*,struct tegra_bo*) ; 
 struct tegra_bo* FUNC5 (struct drm_device*,size_t) ; 

struct tegra_bo *FUNC6(struct drm_device *drm, size_t size,
				 unsigned long flags)
{
	struct tegra_bo *bo;
	int err;

	bo = FUNC5(drm, size);
	if (FUNC1(bo))
		return bo;

	err = FUNC4(drm, bo);
	if (err < 0)
		goto release;

	if (flags & DRM_TEGRA_GEM_CREATE_TILED)
		bo->tiling.mode = TEGRA_BO_TILING_MODE_TILED;

	if (flags & DRM_TEGRA_GEM_CREATE_BOTTOM_UP)
		bo->flags |= TEGRA_BO_BOTTOM_UP;

	return bo;

release:
	FUNC2(&bo->gem);
	FUNC3(bo);
	return FUNC0(err);
}