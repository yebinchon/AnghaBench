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
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {struct drm_gem_object** obj; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,struct drm_framebuffer*,struct drm_framebuffer_funcs const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC6(struct drm_device *dev,
		 const struct drm_mode_fb_cmd2 *mode_cmd,
		 struct drm_gem_object **obj, unsigned int num_planes,
		 const struct drm_framebuffer_funcs *funcs)
{
	struct drm_framebuffer *fb;
	int ret, i;

	fb = FUNC5(sizeof(*fb), GFP_KERNEL);
	if (!fb)
		return FUNC1(-ENOMEM);

	FUNC3(dev, fb, mode_cmd);

	for (i = 0; i < num_planes; i++)
		fb->obj[i] = obj[i];

	ret = FUNC2(dev, fb, funcs);
	if (ret) {
		FUNC0(dev->dev, "Failed to init framebuffer: %d\n",
			      ret);
		FUNC4(fb);
		return FUNC1(ret);
	}

	return fb;
}