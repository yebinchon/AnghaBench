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
struct drm_mode_fb_cmd2 {int width; int height; unsigned int* pitches; unsigned int* offsets; int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_framebuffer_funcs {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; int hsub; int vsub; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_framebuffer* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_framebuffer*) ; 
 int FUNC3 (struct drm_framebuffer*) ; 
 unsigned int FUNC4 (struct drm_format_info const*,int,unsigned int) ; 
 struct drm_framebuffer* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object**,int,struct drm_framebuffer_funcs const*) ; 
 struct drm_gem_object* FUNC6 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_object*) ; 
 struct drm_format_info* FUNC8 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 

struct drm_framebuffer *
FUNC9(struct drm_device *dev, struct drm_file *file,
			     const struct drm_mode_fb_cmd2 *mode_cmd,
			     const struct drm_framebuffer_funcs *funcs)
{
	const struct drm_format_info *info;
	struct drm_gem_object *objs[4];
	struct drm_framebuffer *fb;
	int ret, i;

	info = FUNC8(dev, mode_cmd);
	if (!info)
		return FUNC1(-EINVAL);

	for (i = 0; i < info->num_planes; i++) {
		unsigned int width = mode_cmd->width / (i ? info->hsub : 1);
		unsigned int height = mode_cmd->height / (i ? info->vsub : 1);
		unsigned int min_size;

		objs[i] = FUNC6(file, mode_cmd->handles[i]);
		if (!objs[i]) {
			FUNC0("Failed to lookup GEM object\n");
			ret = -ENOENT;
			goto err_gem_object_put;
		}

		min_size = (height - 1) * mode_cmd->pitches[i]
			 + FUNC4(info, i, width)
			 + mode_cmd->offsets[i];

		if (objs[i]->size < min_size) {
			FUNC7(objs[i]);
			ret = -EINVAL;
			goto err_gem_object_put;
		}
	}

	fb = FUNC5(dev, mode_cmd, objs, i, funcs);
	if (FUNC2(fb)) {
		ret = FUNC3(fb);
		goto err_gem_object_put;
	}

	return fb;

err_gem_object_put:
	for (i--; i >= 0; i--)
		FUNC7(objs[i]);

	return FUNC1(ret);
}