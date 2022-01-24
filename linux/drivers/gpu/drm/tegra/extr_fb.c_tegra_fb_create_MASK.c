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
struct tegra_bo {int /*<<< orphan*/  gem; } ;
struct drm_mode_fb_cmd2 {int width; int height; unsigned int* pitches; unsigned int* offsets; int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {unsigned int size; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {unsigned int num_planes; int hsub; int vsub; unsigned int* cpp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_framebuffer*) ; 
 int FUNC2 (struct drm_framebuffer*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_format_info* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 struct drm_framebuffer* FUNC6 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct tegra_bo**,unsigned int) ; 
 struct tegra_bo* FUNC7 (struct drm_gem_object*) ; 

struct drm_framebuffer *FUNC8(struct drm_device *drm,
					struct drm_file *file,
					const struct drm_mode_fb_cmd2 *cmd)
{
	const struct drm_format_info *info = FUNC5(drm, cmd);
	struct tegra_bo *planes[4];
	struct drm_gem_object *gem;
	struct drm_framebuffer *fb;
	unsigned int i;
	int err;

	for (i = 0; i < info->num_planes; i++) {
		unsigned int width = cmd->width / (i ? info->hsub : 1);
		unsigned int height = cmd->height / (i ? info->vsub : 1);
		unsigned int size, bpp;

		gem = FUNC3(file, cmd->handles[i]);
		if (!gem) {
			err = -ENXIO;
			goto unreference;
		}

		bpp = info->cpp[i];

		size = (height - 1) * cmd->pitches[i] +
		       width * bpp + cmd->offsets[i];

		if (gem->size < size) {
			err = -EINVAL;
			goto unreference;
		}

		planes[i] = FUNC7(gem);
	}

	fb = FUNC6(drm, cmd, planes, i);
	if (FUNC1(fb)) {
		err = FUNC2(fb);
		goto unreference;
	}

	return fb;

unreference:
	while (i--)
		FUNC4(&planes[i]->gem);

	return FUNC0(err);
}