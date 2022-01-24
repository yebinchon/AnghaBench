#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/  base; int /*<<< orphan*/  head; int /*<<< orphan*/  comm; struct drm_framebuffer_funcs const* funcs; int /*<<< orphan*/  filp_head; int /*<<< orphan*/  format; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  fb_lock; int /*<<< orphan*/  fb_list; int /*<<< orphan*/  num_fb; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_FB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  drm_framebuffer_free ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct drm_device *dev, struct drm_framebuffer *fb,
			 const struct drm_framebuffer_funcs *funcs)
{
	int ret;

	if (FUNC1(fb->dev != dev || !fb->format))
		return -EINVAL;

	FUNC0(&fb->filp_head);

	fb->funcs = funcs;
	FUNC7(fb->comm, current->comm);

	ret = FUNC2(dev, &fb->base, DRM_MODE_OBJECT_FB,
				    false, drm_framebuffer_free);
	if (ret)
		goto out;

	FUNC5(&dev->mode_config.fb_lock);
	dev->mode_config.num_fb++;
	FUNC4(&fb->head, &dev->mode_config.fb_list);
	FUNC6(&dev->mode_config.fb_lock);

	FUNC3(dev, &fb->base);
out:
	return ret;
}