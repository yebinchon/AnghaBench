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
struct drm_mode_fb_cmd2 {int flags; scalar_t__ width; scalar_t__ height; } ;
struct drm_mode_config {scalar_t__ min_width; scalar_t__ max_width; scalar_t__ min_height; scalar_t__ max_height; TYPE_1__* funcs; int /*<<< orphan*/  allow_fb_modifiers; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct TYPE_2__ {struct drm_framebuffer* (* fb_create ) (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_FB_INTERLACED ; 
 int DRM_MODE_FB_MODIFIERS ; 
 int EINVAL ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_framebuffer*) ; 
 int FUNC3 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 struct drm_framebuffer* FUNC4 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 

struct drm_framebuffer *
FUNC5(struct drm_device *dev,
				const struct drm_mode_fb_cmd2 *r,
				struct drm_file *file_priv)
{
	struct drm_mode_config *config = &dev->mode_config;
	struct drm_framebuffer *fb;
	int ret;

	if (r->flags & ~(DRM_MODE_FB_INTERLACED | DRM_MODE_FB_MODIFIERS)) {
		FUNC0("bad framebuffer flags 0x%08x\n", r->flags);
		return FUNC1(-EINVAL);
	}

	if ((config->min_width > r->width) || (r->width > config->max_width)) {
		FUNC0("bad framebuffer width %d, should be >= %d && <= %d\n",
			  r->width, config->min_width, config->max_width);
		return FUNC1(-EINVAL);
	}
	if ((config->min_height > r->height) || (r->height > config->max_height)) {
		FUNC0("bad framebuffer height %d, should be >= %d && <= %d\n",
			  r->height, config->min_height, config->max_height);
		return FUNC1(-EINVAL);
	}

	if (r->flags & DRM_MODE_FB_MODIFIERS &&
	    !dev->mode_config.allow_fb_modifiers) {
		FUNC0("driver does not support fb modifiers\n");
		return FUNC1(-EINVAL);
	}

	ret = FUNC3(dev, r);
	if (ret)
		return FUNC1(ret);

	fb = dev->mode_config.funcs->fb_create(dev, file_priv, r);
	if (FUNC2(fb)) {
		FUNC0("could not create framebuffer\n");
		return fb;
	}

	return fb;
}