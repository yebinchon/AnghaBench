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
struct vmw_private {int /*<<< orphan*/  dev; } ;
struct vmw_fb_par {int /*<<< orphan*/  bo_mutex; struct drm_display_mode* set_mode; int /*<<< orphan*/  local_work; TYPE_1__* set_fb; int /*<<< orphan*/  fb_y; int /*<<< orphan*/  fb_x; int /*<<< orphan*/  con; int /*<<< orphan*/  crtc; struct vmw_private* vmw_priv; } ;
struct fb_var_screeninfo {int xres; int /*<<< orphan*/  yoffset; int /*<<< orphan*/  xoffset; int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  yres; } ;
struct fb_info {struct fb_var_screeninfo var; struct vmw_fb_par* par; } ;
struct drm_mode_set {int num_connectors; int /*<<< orphan*/ * connectors; TYPE_1__* fb; struct drm_display_mode* mode; scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  crtc; } ;
struct drm_display_mode {int hdisplay; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int DRM_MODE_FLAG_NHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int /*<<< orphan*/  DRM_MODE_TYPE_DRIVER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC4 (int /*<<< orphan*/ ,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_fb_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_private*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_mode_set*) ; 

__attribute__((used)) static int FUNC13(struct fb_info *info)
{
	struct vmw_fb_par *par = info->par;
	struct vmw_private *vmw_priv = par->vmw_priv;
	struct drm_mode_set set;
	struct fb_var_screeninfo *var = &info->var;
	struct drm_display_mode new_mode = { FUNC2("fb_mode",
		DRM_MODE_TYPE_DRIVER,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC)
	};
	struct drm_display_mode *mode;
	int ret;

	mode = FUNC4(vmw_priv->dev, &new_mode);
	if (!mode) {
		FUNC1("Could not create new fb mode.\n");
		return -ENOMEM;
	}

	mode->hdisplay = var->xres;
	mode->vdisplay = var->yres;
	FUNC10(mode);

	if (!FUNC11(vmw_priv,
					mode->hdisplay *
					FUNC0(var->bits_per_pixel, 8),
					mode->vdisplay)) {
		FUNC3(vmw_priv->dev, mode);
		return -EINVAL;
	}

	FUNC5(&par->bo_mutex);
	ret = FUNC9(info);
	if (ret)
		goto out_unlock;

	par->fb_x = var->xoffset;
	par->fb_y = var->yoffset;

	set.crtc = par->crtc;
	set.x = 0;
	set.y = 0;
	set.mode = mode;
	set.fb = par->set_fb;
	set.num_connectors = 1;
	set.connectors = &par->con;

	ret = FUNC12(&set);
	if (ret)
		goto out_unlock;

	FUNC8(par, par->fb_x, par->fb_y,
			  par->set_fb->width, par->set_fb->height);

	/* If there already was stuff dirty we wont
	 * schedule a new work, so lets do it now */

	FUNC7(&par->local_work, 0);

out_unlock:
	if (par->set_mode)
		FUNC3(vmw_priv->dev, par->set_mode);
	par->set_mode = mode;

	FUNC6(&par->bo_mutex);

	return ret;
}