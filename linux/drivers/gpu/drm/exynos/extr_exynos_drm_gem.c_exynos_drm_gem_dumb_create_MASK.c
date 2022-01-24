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
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int EXYNOS_BO_CONTIG ; 
 unsigned int EXYNOS_BO_NONCONTIG ; 
 unsigned int EXYNOS_BO_WC ; 
 scalar_t__ FUNC0 (struct exynos_drm_gem*) ; 
 int FUNC1 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct exynos_drm_gem* FUNC3 (struct drm_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_drm_gem*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct drm_file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 

int FUNC7(struct drm_file *file_priv,
			       struct drm_device *dev,
			       struct drm_mode_create_dumb *args)
{
	struct exynos_drm_gem *exynos_gem;
	unsigned int flags;
	int ret;

	/*
	 * allocate memory to be used for framebuffer.
	 * - this callback would be called by user application
	 *	with DRM_IOCTL_MODE_CREATE_DUMB command.
	 */

	args->pitch = args->width * ((args->bpp + 7) / 8);
	args->size = args->pitch * args->height;

	if (FUNC6(dev))
		flags = EXYNOS_BO_NONCONTIG | EXYNOS_BO_WC;
	else
		flags = EXYNOS_BO_CONTIG | EXYNOS_BO_WC;

	exynos_gem = FUNC3(dev, flags, args->size);
	if (FUNC0(exynos_gem)) {
		FUNC2(dev->dev, "FB allocation failed.\n");
		return FUNC1(exynos_gem);
	}

	ret = FUNC5(&exynos_gem->base, file_priv,
					   &args->handle);
	if (ret) {
		FUNC4(exynos_gem);
		return ret;
	}

	return 0;
}