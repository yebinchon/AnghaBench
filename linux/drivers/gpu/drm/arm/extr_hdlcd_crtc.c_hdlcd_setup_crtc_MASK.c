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
struct hdlcd_drm_private {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_plane*) ; 
 int FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ *,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdlcd_crtc_funcs ; 
 int /*<<< orphan*/  hdlcd_crtc_helper_funcs ; 
 struct drm_plane* FUNC4 (struct drm_device*) ; 

int FUNC5(struct drm_device *drm)
{
	struct hdlcd_drm_private *hdlcd = drm->dev_private;
	struct drm_plane *primary;
	int ret;

	primary = FUNC4(drm);
	if (FUNC0(primary))
		return FUNC1(primary);

	ret = FUNC3(drm, &hdlcd->crtc, primary, NULL,
					&hdlcd_crtc_funcs, NULL);
	if (ret)
		return ret;

	FUNC2(&hdlcd->crtc, &hdlcd_crtc_helper_funcs);
	return 0;
}