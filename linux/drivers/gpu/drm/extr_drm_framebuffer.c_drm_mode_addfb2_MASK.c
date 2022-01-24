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
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  fb_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_framebuffer {int /*<<< orphan*/  filp_head; TYPE_1__ base; } ;
struct drm_file {int /*<<< orphan*/  fbs_lock; int /*<<< orphan*/  fbs; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_framebuffer* FUNC4 (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev,
		    void *data, struct drm_file *file_priv)
{
	struct drm_mode_fb_cmd2 *r = data;
	struct drm_framebuffer *fb;

	if (!FUNC3(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	fb = FUNC4(dev, r, file_priv);
	if (FUNC1(fb))
		return FUNC2(fb);

	FUNC0("[FB:%d]\n", fb->base.id);
	r->fb_id = fb->base.id;

	/* Transfer ownership to the filp for reaping on close */
	FUNC6(&file_priv->fbs_lock);
	FUNC5(&fb->filp_head, &file_priv->fbs);
	FUNC7(&file_priv->fbs_lock);

	return 0;
}