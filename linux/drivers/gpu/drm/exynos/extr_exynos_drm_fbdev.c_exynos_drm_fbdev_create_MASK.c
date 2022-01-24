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
struct exynos_drm_gem {int dummy; } ;
struct exynos_drm_fbdev {struct exynos_drm_gem* exynos_gem; } ;
struct drm_mode_fb_cmd2 {int width; unsigned long height; int* pitches; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  member_0; } ;
struct drm_fb_helper_surface_size {int surface_width; unsigned long surface_height; int surface_bpp; int /*<<< orphan*/  surface_depth; } ;
struct drm_fb_helper {struct exynos_drm_gem* fb; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EXYNOS_BO_CONTIG ; 
 int /*<<< orphan*/  EXYNOS_BO_NONCONTIG ; 
 scalar_t__ FUNC2 (struct exynos_drm_gem*) ; 
 int FUNC3 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_fb_helper*,struct drm_fb_helper_surface_size*,struct exynos_drm_gem*) ; 
 struct exynos_drm_gem* FUNC8 (struct drm_device*,struct drm_mode_fb_cmd2*,struct exynos_drm_gem**,int) ; 
 struct exynos_drm_gem* FUNC9 (struct drm_device*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct exynos_drm_gem*) ; 
 scalar_t__ FUNC11 (struct drm_device*) ; 
 struct exynos_drm_fbdev* FUNC12 (struct drm_fb_helper*) ; 

__attribute__((used)) static int FUNC13(struct drm_fb_helper *helper,
				    struct drm_fb_helper_surface_size *sizes)
{
	struct exynos_drm_fbdev *exynos_fbdev = FUNC12(helper);
	struct exynos_drm_gem *exynos_gem;
	struct drm_device *dev = helper->dev;
	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
	unsigned long size;
	int ret;

	FUNC0(dev->dev,
			  "surface width(%d), height(%d) and bpp(%d\n",
			  sizes->surface_width, sizes->surface_height,
			  sizes->surface_bpp);

	mode_cmd.width = sizes->surface_width;
	mode_cmd.height = sizes->surface_height;
	mode_cmd.pitches[0] = sizes->surface_width * (sizes->surface_bpp >> 3);
	mode_cmd.pixel_format = FUNC6(sizes->surface_bpp,
							  sizes->surface_depth);

	size = mode_cmd.pitches[0] * mode_cmd.height;

	exynos_gem = FUNC9(dev, EXYNOS_BO_CONTIG, size);
	/*
	 * If physically contiguous memory allocation fails and if IOMMU is
	 * supported then try to get buffer from non physically contiguous
	 * memory area.
	 */
	if (FUNC2(exynos_gem) && FUNC11(dev)) {
		FUNC4(dev->dev, "contiguous FB allocation failed, falling back to non-contiguous\n");
		exynos_gem = FUNC9(dev, EXYNOS_BO_NONCONTIG,
						   size);
	}

	if (FUNC2(exynos_gem))
		return FUNC3(exynos_gem);

	exynos_fbdev->exynos_gem = exynos_gem;

	helper->fb =
		FUNC8(dev, &mode_cmd, &exynos_gem, 1);
	if (FUNC2(helper->fb)) {
		FUNC1(dev->dev, "failed to create drm framebuffer.\n");
		ret = FUNC3(helper->fb);
		goto err_destroy_gem;
	}

	ret = FUNC7(helper, sizes, exynos_gem);
	if (ret < 0)
		goto err_destroy_framebuffer;

	return ret;

err_destroy_framebuffer:
	FUNC5(helper->fb);
err_destroy_gem:
	FUNC10(exynos_gem);

	/*
	 * if failed, all resources allocated above would be released by
	 * drm_mode_config_cleanup() when drm_load() had been called prior
	 * to any specific driver such as fimd or hdmi driver.
	 */

	return ret;
}