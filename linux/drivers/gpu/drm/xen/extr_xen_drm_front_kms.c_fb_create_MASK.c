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
struct xen_drm_front_drm_info {int /*<<< orphan*/  front_info; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {TYPE_1__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct xen_drm_front_drm_info* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOENT ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC3 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 struct drm_gem_object* FUNC5 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  fb_funcs ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_object*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_framebuffer*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC10(struct drm_device *dev, struct drm_file *filp,
	  const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct xen_drm_front_drm_info *drm_info = dev->dev_private;
	struct drm_framebuffer *fb;
	struct drm_gem_object *gem_obj;
	int ret;

	fb = FUNC3(dev, filp, mode_cmd, &fb_funcs);
	if (FUNC2(fb))
		return fb;

	gem_obj = FUNC5(filp, mode_cmd->handles[0]);
	if (!gem_obj) {
		FUNC0("Failed to lookup GEM object\n");
		ret = -ENOENT;
		goto fail;
	}

	FUNC6(gem_obj);

	ret = FUNC8(drm_info->front_info,
				      FUNC7(gem_obj),
				      FUNC9(fb),
				      fb->width, fb->height,
				      fb->format->format);
	if (ret < 0) {
		FUNC0("Back failed to attach FB %p: %d\n", fb, ret);
		goto fail;
	}

	return fb;

fail:
	FUNC4(fb);
	return FUNC1(ret);
}