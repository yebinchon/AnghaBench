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
struct vbox_private {int /*<<< orphan*/  ddev; } ;
struct vbox_framebuffer {int /*<<< orphan*/  base; struct drm_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  vbox_fb_funcs ; 

int FUNC3(struct vbox_private *vbox,
			  struct vbox_framebuffer *vbox_fb,
			  const struct drm_mode_fb_cmd2 *mode_cmd,
			  struct drm_gem_object *obj)
{
	int ret;

	FUNC2(&vbox->ddev, &vbox_fb->base, mode_cmd);
	vbox_fb->obj = obj;
	ret = FUNC1(&vbox->ddev, &vbox_fb->base, &vbox_fb_funcs);
	if (ret) {
		FUNC0("framebuffer init failed %d\n", ret);
		return ret;
	}

	return 0;
}