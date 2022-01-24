#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_plane {TYPE_3__* funcs; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {scalar_t__ nv12; } ;
struct dc_plane_cap {TYPE_2__ pixel_format_support; scalar_t__ per_pixel_alpha; } ;
struct amdgpu_display_manager {TYPE_1__* adev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* reset ) (struct drm_plane*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT601 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_BT709 ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_FULL_RANGE ; 
 int /*<<< orphan*/  DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PIXEL_NONE ; 
 int /*<<< orphan*/  DRM_MODE_BLEND_PREMULTI ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int EPERM ; 
 int /*<<< orphan*/  dm_plane_funcs ; 
 int /*<<< orphan*/  dm_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct drm_plane*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_plane*,struct dc_plane_cap const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_display_manager *dm,
				struct drm_plane *plane,
				unsigned long possible_crtcs,
				const struct dc_plane_cap *plane_cap)
{
	uint32_t formats[32];
	int num_formats;
	int res = -EPERM;

	num_formats = FUNC7(plane, plane_cap, formats,
					FUNC0(formats));

	res = FUNC6(dm->adev->ddev, plane, possible_crtcs,
				       &dm_plane_funcs, formats, num_formats,
				       NULL, plane->type, NULL);
	if (res)
		return res;

	if (plane->type == DRM_PLANE_TYPE_OVERLAY &&
	    plane_cap && plane_cap->per_pixel_alpha) {
		unsigned int blend_caps = FUNC1(DRM_MODE_BLEND_PIXEL_NONE) |
					  FUNC1(DRM_MODE_BLEND_PREMULTI);

		FUNC2(plane);
		FUNC3(plane, blend_caps);
	}

	if (plane->type == DRM_PLANE_TYPE_PRIMARY &&
	    plane_cap && plane_cap->pixel_format_support.nv12) {
		/* This only affects YUV formats. */
		FUNC4(
			plane,
			FUNC1(DRM_COLOR_YCBCR_BT601) |
			FUNC1(DRM_COLOR_YCBCR_BT709),
			FUNC1(DRM_COLOR_YCBCR_LIMITED_RANGE) |
			FUNC1(DRM_COLOR_YCBCR_FULL_RANGE),
			DRM_COLOR_YCBCR_BT709, DRM_COLOR_YCBCR_LIMITED_RANGE);
	}

	FUNC5(plane, &dm_plane_helper_funcs);

	/* Create (reset) the plane state */
	if (plane->funcs->reset)
		plane->funcs->reset(plane);

	return 0;
}