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
struct drm_plane {int dummy; } ;
struct drm_device {struct arcpgu_drm_private* dev_private; } ;
struct arcpgu_drm_private {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_plane*) ; 
 int FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  arc_pgu_crtc_funcs ; 
 int /*<<< orphan*/  arc_pgu_crtc_helper_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*) ; 
 struct drm_plane* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_device *drm)
{
	struct arcpgu_drm_private *arcpgu = drm->dev_private;
	struct drm_plane *primary;
	int ret;

	primary = FUNC3(drm);
	if (FUNC0(primary))
		return FUNC1(primary);

	ret = FUNC5(drm, &arcpgu->crtc, primary, NULL,
					&arc_pgu_crtc_funcs, NULL);
	if (ret) {
		FUNC2(primary);
		return ret;
	}

	FUNC4(&arcpgu->crtc, &arc_pgu_crtc_helper_funcs);
	return 0;
}