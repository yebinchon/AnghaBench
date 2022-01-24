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
struct hibmc_framebuffer {int /*<<< orphan*/  fb; struct drm_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 struct hibmc_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  hibmc_fb_funcs ; 
 int /*<<< orphan*/  FUNC4 (struct hibmc_framebuffer*) ; 
 struct hibmc_framebuffer* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct hibmc_framebuffer *
FUNC6(struct drm_device *dev,
		       const struct drm_mode_fb_cmd2 *mode_cmd,
		       struct drm_gem_object *obj)
{
	struct hibmc_framebuffer *hibmc_fb;
	int ret;

	hibmc_fb = FUNC5(sizeof(*hibmc_fb), GFP_KERNEL);
	if (!hibmc_fb) {
		FUNC0("failed to allocate hibmc_fb\n");
		return FUNC1(-ENOMEM);
	}

	FUNC3(dev, &hibmc_fb->fb, mode_cmd);
	hibmc_fb->obj = obj;
	ret = FUNC2(dev, &hibmc_fb->fb, &hibmc_fb_funcs);
	if (ret) {
		FUNC0("drm_framebuffer_init failed: %d\n", ret);
		FUNC4(hibmc_fb);
		return FUNC1(ret);
	}

	return hibmc_fb;
}