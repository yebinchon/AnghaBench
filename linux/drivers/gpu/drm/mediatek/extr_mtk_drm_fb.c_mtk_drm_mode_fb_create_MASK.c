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
struct drm_mode_fb_cmd2 {unsigned int width; unsigned int height; unsigned int* pitches; scalar_t__* offsets; int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {int num_planes; unsigned int* cpp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_framebuffer*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct drm_format_info* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 struct drm_framebuffer* FUNC6 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ; 

struct drm_framebuffer *FUNC7(struct drm_device *dev,
					       struct drm_file *file,
					       const struct drm_mode_fb_cmd2 *cmd)
{
	const struct drm_format_info *info = FUNC5(dev, cmd);
	struct drm_framebuffer *fb;
	struct drm_gem_object *gem;
	unsigned int width = cmd->width;
	unsigned int height = cmd->height;
	unsigned int size, bpp;
	int ret;

	if (info->num_planes != 1)
		return FUNC0(-EINVAL);

	gem = FUNC3(file, cmd->handles[0]);
	if (!gem)
		return FUNC0(-ENOENT);

	bpp = info->cpp[0];
	size = (height - 1) * cmd->pitches[0] + width * bpp;
	size += cmd->offsets[0];

	if (gem->size < size) {
		ret = -EINVAL;
		goto unreference;
	}

	fb = FUNC6(dev, cmd, gem);
	if (FUNC1(fb)) {
		ret = FUNC2(fb);
		goto unreference;
	}

	return fb;

unreference:
	FUNC4(gem);
	return FUNC0(ret);
}