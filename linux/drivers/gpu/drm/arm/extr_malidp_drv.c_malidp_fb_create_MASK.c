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
struct drm_mode_fb_cmd2 {scalar_t__* modifier; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 struct drm_framebuffer* FUNC1 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 

struct drm_framebuffer *
FUNC3(struct drm_device *dev, struct drm_file *file,
		 const struct drm_mode_fb_cmd2 *mode_cmd)
{
	if (mode_cmd->modifier[0]) {
		if (!FUNC2(dev, file, mode_cmd))
			return FUNC0(-EINVAL);
	}

	return FUNC1(dev, file, mode_cmd);
}