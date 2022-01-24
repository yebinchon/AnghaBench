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
struct udl_gem_object {int dummy; } ;
struct udl_framebuffer {int /*<<< orphan*/  base; struct udl_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  udlfb_funcs ; 

__attribute__((used)) static int
FUNC2(struct drm_device *dev,
		     struct udl_framebuffer *ufb,
		     const struct drm_mode_fb_cmd2 *mode_cmd,
		     struct udl_gem_object *obj)
{
	int ret;

	ufb->obj = obj;
	FUNC1(dev, &ufb->base, mode_cmd);
	ret = FUNC0(dev, &ufb->base, &udlfb_funcs);
	return ret;
}