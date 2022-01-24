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
struct tegra_bo {int /*<<< orphan*/  gem; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/ ** obj; TYPE_1__* format; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int num_planes; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_fb_funcs ; 

__attribute__((used)) static struct drm_framebuffer *FUNC6(struct drm_device *drm,
					      const struct drm_mode_fb_cmd2 *mode_cmd,
					      struct tegra_bo **planes,
					      unsigned int num_planes)
{
	struct drm_framebuffer *fb;
	unsigned int i;
	int err;

	fb = FUNC5(sizeof(*fb), GFP_KERNEL);
	if (!fb)
		return FUNC0(-ENOMEM);

	FUNC3(drm, fb, mode_cmd);

	for (i = 0; i < fb->format->num_planes; i++)
		fb->obj[i] = &planes[i]->gem;

	err = FUNC2(drm, fb, &tegra_fb_funcs);
	if (err < 0) {
		FUNC1(drm->dev, "failed to initialize framebuffer: %d\n",
			err);
		FUNC4(fb);
		return FUNC0(err);
	}

	return fb;
}