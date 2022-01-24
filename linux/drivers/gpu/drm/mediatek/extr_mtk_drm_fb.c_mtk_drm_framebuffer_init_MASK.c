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
struct drm_framebuffer {struct drm_gem_object** obj; } ;
struct drm_format_info {int num_planes; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct drm_device*,struct drm_framebuffer*,int /*<<< orphan*/ *) ; 
 struct drm_format_info* FUNC3 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_framebuffer*) ; 
 struct drm_framebuffer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_drm_fb_funcs ; 

__attribute__((used)) static struct drm_framebuffer *FUNC7(struct drm_device *dev,
					const struct drm_mode_fb_cmd2 *mode,
					struct drm_gem_object *obj)
{
	const struct drm_format_info *info = FUNC3(dev, mode);
	struct drm_framebuffer *fb;
	int ret;

	if (info->num_planes != 1)
		return FUNC1(-EINVAL);

	fb = FUNC6(sizeof(*fb), GFP_KERNEL);
	if (!fb)
		return FUNC1(-ENOMEM);

	FUNC4(dev, fb, mode);

	fb->obj[0] = obj;

	ret = FUNC2(dev, fb, &mtk_drm_fb_funcs);
	if (ret) {
		FUNC0("failed to initialize framebuffer\n");
		FUNC5(fb);
		return FUNC1(ret);
	}

	return fb;
}