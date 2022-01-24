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
struct psb_framebuffer {struct drm_framebuffer base; } ;
struct gtt_range {int dummy; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct psb_framebuffer*) ; 
 struct psb_framebuffer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_device*,struct psb_framebuffer*,struct drm_mode_fb_cmd2 const*,struct gtt_range*) ; 

__attribute__((used)) static struct drm_framebuffer *FUNC4
			(struct drm_device *dev,
			 const struct drm_mode_fb_cmd2 *mode_cmd,
			 struct gtt_range *gt)
{
	struct psb_framebuffer *fb;
	int ret;

	fb = FUNC2(sizeof(*fb), GFP_KERNEL);
	if (!fb)
		return FUNC0(-ENOMEM);

	ret = FUNC3(dev, fb, mode_cmd, gt);
	if (ret) {
		FUNC1(fb);
		return FUNC0(ret);
	}
	return &fb->base;
}