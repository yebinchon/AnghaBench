#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_18__ {int enabled; TYPE_1__* funcs; } ;
struct drm_plane {size_t crtc_id; int otg_inst; TYPE_7__ base; int /*<<< orphan*/  max_cursor_height; int /*<<< orphan*/  max_cursor_width; int /*<<< orphan*/  type; } ;
struct amdgpu_display_manager {TYPE_6__* adev; int /*<<< orphan*/  ddev; } ;
struct amdgpu_crtc {size_t crtc_id; int otg_inst; TYPE_7__ base; int /*<<< orphan*/  max_cursor_height; int /*<<< orphan*/  max_cursor_width; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {struct drm_plane** crtcs; } ;
struct TYPE_15__ {TYPE_3__* dc; } ;
struct TYPE_17__ {TYPE_5__ mode_info; TYPE_4__ dm; } ;
struct TYPE_13__ {int /*<<< orphan*/  max_cursor_size; } ;
struct TYPE_14__ {TYPE_2__ caps; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* reset ) (TYPE_7__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_COLOR_LEGACY_LUT_ENTRIES ; 
 int /*<<< orphan*/  MAX_COLOR_LUT_ENTRIES ; 
 int /*<<< orphan*/  amdgpu_dm_crtc_funcs ; 
 int /*<<< orphan*/  amdgpu_dm_crtc_helper_funcs ; 
 int FUNC0 (struct amdgpu_display_manager*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,struct drm_plane*,struct drm_plane*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_plane*) ; 
 struct drm_plane* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_display_manager *dm,
			       struct drm_plane *plane,
			       uint32_t crtc_index)
{
	struct amdgpu_crtc *acrtc = NULL;
	struct drm_plane *cursor_plane;

	int res = -ENOMEM;

	cursor_plane = FUNC6(sizeof(*cursor_plane), GFP_KERNEL);
	if (!cursor_plane)
		goto fail;

	cursor_plane->type = DRM_PLANE_TYPE_CURSOR;
	res = FUNC0(dm, cursor_plane, 0, NULL);

	acrtc = FUNC6(sizeof(struct amdgpu_crtc), GFP_KERNEL);
	if (!acrtc)
		goto fail;

	res = FUNC3(
			dm->ddev,
			&acrtc->base,
			plane,
			cursor_plane,
			&amdgpu_dm_crtc_funcs, NULL);

	if (res)
		goto fail;

	FUNC2(&acrtc->base, &amdgpu_dm_crtc_helper_funcs);

	/* Create (reset) the plane state */
	if (acrtc->base.funcs->reset)
		acrtc->base.funcs->reset(&acrtc->base);

	acrtc->max_cursor_width = dm->adev->dm.dc->caps.max_cursor_size;
	acrtc->max_cursor_height = dm->adev->dm.dc->caps.max_cursor_size;

	acrtc->crtc_id = crtc_index;
	acrtc->base.enabled = false;
	acrtc->otg_inst = -1;

	dm->adev->mode_info.crtcs[crtc_index] = acrtc;
	FUNC1(&acrtc->base, MAX_COLOR_LUT_ENTRIES,
				   true, MAX_COLOR_LUT_ENTRIES);
	FUNC4(&acrtc->base, MAX_COLOR_LEGACY_LUT_ENTRIES);

	return 0;

fail:
	FUNC5(acrtc);
	FUNC5(cursor_plane);
	return res;
}