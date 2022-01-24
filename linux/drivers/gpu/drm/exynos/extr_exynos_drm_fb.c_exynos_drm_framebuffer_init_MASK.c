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
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/ ** obj; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,struct exynos_drm_gem*) ; 
 int FUNC3 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  exynos_drm_fb_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC6 (int,int /*<<< orphan*/ ) ; 

struct drm_framebuffer *
FUNC7(struct drm_device *dev,
			    const struct drm_mode_fb_cmd2 *mode_cmd,
			    struct exynos_drm_gem **exynos_gem,
			    int count)
{
	struct drm_framebuffer *fb;
	int i;
	int ret;

	fb = FUNC6(sizeof(*fb), GFP_KERNEL);
	if (!fb)
		return FUNC1(-ENOMEM);

	for (i = 0; i < count; i++) {
		ret = FUNC2(dev, exynos_gem[i]);
		if (ret < 0)
			goto err;

		fb->obj[i] = &exynos_gem[i]->base;
	}

	FUNC4(dev, fb, mode_cmd);

	ret = FUNC3(dev, fb, &exynos_drm_fb_funcs);
	if (ret < 0) {
		FUNC0(dev->dev,
			      "failed to initialize framebuffer\n");
		goto err;
	}

	return fb;

err:
	FUNC5(fb);
	return FUNC1(ret);
}