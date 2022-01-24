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
struct drm_framebuffer {int dummy; } ;
struct hibmc_framebuffer {struct drm_framebuffer fb; } ;
struct drm_mode_fb_cmd2 {int pixel_format; int /*<<< orphan*/ * handles; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 long ENOENT ; 
 struct drm_framebuffer* FUNC1 (long) ; 
 scalar_t__ FUNC2 (struct hibmc_framebuffer*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct hibmc_framebuffer* FUNC5 (struct drm_device*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC6(struct drm_device *dev,
			      struct drm_file *filp,
			      const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj;
	struct hibmc_framebuffer *hibmc_fb;

	FUNC0("%dx%d, format %c%c%c%c\n",
			 mode_cmd->width, mode_cmd->height,
			 (mode_cmd->pixel_format) & 0xff,
			 (mode_cmd->pixel_format >> 8)  & 0xff,
			 (mode_cmd->pixel_format >> 16) & 0xff,
			 (mode_cmd->pixel_format >> 24) & 0xff);

	obj = FUNC3(filp, mode_cmd->handles[0]);
	if (!obj)
		return FUNC1(-ENOENT);

	hibmc_fb = FUNC5(dev, mode_cmd, obj);
	if (FUNC2(hibmc_fb)) {
		FUNC4(obj);
		return FUNC1((long)hibmc_fb);
	}
	return &hibmc_fb->fb;
}