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
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_format_info {unsigned int num_planes; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_framebuffer*) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct drm_format_info* FUNC4 (struct drm_device*,struct drm_mode_fb_cmd2 const*) ; 
 struct drm_framebuffer* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object**) ; 

struct drm_framebuffer *FUNC6(struct drm_device *dev,
		struct drm_file *file, const struct drm_mode_fb_cmd2 *mode_cmd)
{
	const struct drm_format_info *info = FUNC4(dev,
								 mode_cmd);
	unsigned int num_planes = info->num_planes;
	struct drm_gem_object *bos[4];
	struct drm_framebuffer *fb;
	int i;

	for (i = 0; i < num_planes; i++) {
		bos[i] = FUNC2(file, mode_cmd->handles[i]);
		if (!bos[i]) {
			fb = FUNC0(-ENOENT);
			goto error;
		}
	}

	fb = FUNC5(dev, mode_cmd, bos);
	if (FUNC1(fb))
		goto error;

	return fb;

error:
	while (--i >= 0)
		FUNC3(bos[i]);

	return fb;
}