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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsl_dcu_drm_plane_formats ; 
 int /*<<< orphan*/  fsl_dcu_drm_plane_funcs ; 
 int /*<<< orphan*/  fsl_dcu_drm_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*) ; 
 struct drm_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct drm_plane *FUNC6(struct drm_device *dev)
{
	struct drm_plane *primary;
	int ret;

	primary = FUNC5(sizeof(*primary), GFP_KERNEL);
	if (!primary) {
		FUNC1("Failed to allocate primary plane\n");
		return NULL;
	}

	/* possible_crtc's will be filled in later by crtc_init */
	ret = FUNC3(dev, primary, 0,
				       &fsl_dcu_drm_plane_funcs,
				       fsl_dcu_drm_plane_formats,
				       FUNC0(fsl_dcu_drm_plane_formats),
				       NULL, DRM_PLANE_TYPE_PRIMARY, NULL);
	if (ret) {
		FUNC4(primary);
		primary = NULL;
	}
	FUNC2(primary, &fsl_dcu_drm_plane_helper_funcs);

	return primary;
}