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
struct drm_mode_fb_cmd2 {scalar_t__ pixel_format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_FORMAT_RGB565 ; 
 scalar_t__ DRM_FORMAT_RGB888 ; 
 scalar_t__ DRM_FORMAT_XRGB8888 ; 
 int /*<<< orphan*/  EINVAL ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_framebuffer* FUNC2 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ; 

__attribute__((used)) static struct drm_framebuffer*
FUNC3(struct drm_device *dev, struct drm_file *file_priv,
		 const struct drm_mode_fb_cmd2 *mode_cmd)
{
	if (mode_cmd->pixel_format != DRM_FORMAT_RGB565 &&
	    mode_cmd->pixel_format != DRM_FORMAT_RGB888 &&
	    mode_cmd->pixel_format != DRM_FORMAT_XRGB8888)
		return FUNC0(-EINVAL);
	if (FUNC1(mode_cmd->width, mode_cmd->height, NULL) < 0)
		return FUNC0(-EINVAL);
	return FUNC2(dev, file_priv, mode_cmd);
}