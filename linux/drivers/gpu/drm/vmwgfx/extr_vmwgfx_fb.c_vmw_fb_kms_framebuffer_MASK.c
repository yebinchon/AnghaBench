#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_framebuffer {int width; scalar_t__ height; int* pitches; TYPE_1__* format; } ;
struct vmw_framebuffer {struct drm_framebuffer base; } ;
struct vmw_fb_par {size_t bo_size; struct drm_framebuffer* set_fb; int /*<<< orphan*/  vmw_bo; int /*<<< orphan*/  vmw_priv; } ;
struct fb_var_screeninfo {int xres; scalar_t__ yres; int bits_per_pixel; } ;
struct fb_info {struct fb_var_screeninfo var; struct vmw_fb_par* par; } ;
struct drm_mode_fb_cmd2 {int width; scalar_t__ height; int* pitches; scalar_t__ pixel_format; } ;
struct TYPE_2__ {scalar_t__ format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct vmw_framebuffer*) ; 
 int FUNC2 (struct vmw_framebuffer*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (struct fb_var_screeninfo*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vmw_fb_par*,int,int) ; 
 struct vmw_framebuffer* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct drm_mode_fb_cmd2*) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info)
{
	struct drm_mode_fb_cmd2 mode_cmd;
	struct vmw_fb_par *par = info->par;
	struct fb_var_screeninfo *var = &info->var;
	struct drm_framebuffer *cur_fb;
	struct vmw_framebuffer *vfb;
	int ret = 0, depth;
	size_t new_bo_size;

	ret = FUNC4(var, &depth);
	if (ret)
		return ret;

	mode_cmd.width = var->xres;
	mode_cmd.height = var->yres;
	mode_cmd.pitches[0] = ((var->bits_per_pixel + 7) / 8) * mode_cmd.width;
	mode_cmd.pixel_format =
		FUNC3(var->bits_per_pixel, depth);

	cur_fb = par->set_fb;
	if (cur_fb && cur_fb->width == mode_cmd.width &&
	    cur_fb->height == mode_cmd.height &&
	    cur_fb->format->format == mode_cmd.pixel_format &&
	    cur_fb->pitches[0] == mode_cmd.pitches[0])
		return 0;

	/* Need new buffer object ? */
	new_bo_size = (size_t) mode_cmd.pitches[0] * (size_t) mode_cmd.height;
	ret = FUNC6(par,
				par->bo_size < new_bo_size ||
				par->bo_size > 2*new_bo_size,
				true);
	if (ret)
		return ret;

	if (!par->vmw_bo) {
		ret = FUNC5(par->vmw_priv, new_bo_size,
				       &par->vmw_bo);
		if (ret) {
			FUNC0("Failed creating a buffer object for "
				  "fbdev.\n");
			return ret;
		}
		par->bo_size = new_bo_size;
	}

	vfb = FUNC7(par->vmw_priv, par->vmw_bo, NULL,
				      true, &mode_cmd);
	if (FUNC1(vfb))
		return FUNC2(vfb);

	par->set_fb = &vfb->base;

	return 0;
}