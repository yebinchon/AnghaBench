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
struct vmw_private {scalar_t__ active_display_unit; } ;
struct drm_framebuffer {int /*<<< orphan*/  dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_framebuffer*,struct drm_file*,unsigned int,unsigned int,struct drm_clip_rect*,unsigned int) ; 
 scalar_t__ vmw_du_legacy ; 
 int FUNC1 (struct drm_framebuffer*,struct drm_file*,unsigned int,unsigned int,struct drm_clip_rect*,unsigned int) ; 
 struct vmw_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_framebuffer *framebuffer,
					struct drm_file *file_priv,
					unsigned int flags, unsigned int color,
					struct drm_clip_rect *clips,
					unsigned int num_clips)
{
	struct vmw_private *dev_priv = FUNC2(framebuffer->dev);

	if (dev_priv->active_display_unit == vmw_du_legacy)
		return FUNC1(framebuffer, file_priv, flags,
						color, clips, num_clips);

	return FUNC0(framebuffer, file_priv, flags, color,
					 clips, num_clips);
}