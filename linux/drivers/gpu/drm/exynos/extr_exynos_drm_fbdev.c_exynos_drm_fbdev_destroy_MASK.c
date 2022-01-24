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
struct exynos_drm_gem {int /*<<< orphan*/  kvaddr; } ;
struct exynos_drm_fbdev {struct exynos_drm_gem* exynos_gem; } ;
struct drm_framebuffer {scalar_t__ funcs; } ;
struct drm_fb_helper {struct drm_framebuffer* fb; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer*) ; 
 struct exynos_drm_fbdev* FUNC3 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev,
				      struct drm_fb_helper *fb_helper)
{
	struct exynos_drm_fbdev *exynos_fbd = FUNC3(fb_helper);
	struct exynos_drm_gem *exynos_gem = exynos_fbd->exynos_gem;
	struct drm_framebuffer *fb;

	FUNC4(exynos_gem->kvaddr);

	/* release drm framebuffer and real buffer */
	if (fb_helper->fb && fb_helper->fb->funcs) {
		fb = fb_helper->fb;
		if (fb)
			FUNC2(fb);
	}

	FUNC1(fb_helper);

	FUNC0(fb_helper);
}