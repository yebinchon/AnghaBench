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
typedef  int /*<<< orphan*/  u32 ;
struct vbox_private {int /*<<< orphan*/  ddev; } ;
struct drm_plane_helper_funcs {int dummy; } ;
struct drm_plane_funcs {int dummy; } ;
struct drm_plane {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DRM_PLANE_TYPE_CURSOR ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_plane* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,struct drm_plane_helper_funcs const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_plane*,unsigned int,struct drm_plane_funcs const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*) ; 
 struct drm_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct drm_plane_helper_funcs vbox_cursor_helper_funcs ; 
 int /*<<< orphan*/ * vbox_cursor_plane_formats ; 
 struct drm_plane_funcs vbox_cursor_plane_funcs ; 
 struct drm_plane_helper_funcs vbox_primary_helper_funcs ; 
 int /*<<< orphan*/ * vbox_primary_plane_formats ; 
 struct drm_plane_funcs vbox_primary_plane_funcs ; 

__attribute__((used)) static struct drm_plane *FUNC6(struct vbox_private *vbox,
					   unsigned int possible_crtcs,
					   enum drm_plane_type type)
{
	const struct drm_plane_helper_funcs *helper_funcs = NULL;
	const struct drm_plane_funcs *funcs;
	struct drm_plane *plane;
	const u32 *formats;
	int num_formats;
	int err;

	if (type == DRM_PLANE_TYPE_PRIMARY) {
		funcs = &vbox_primary_plane_funcs;
		formats = vbox_primary_plane_formats;
		helper_funcs = &vbox_primary_helper_funcs;
		num_formats = FUNC0(vbox_primary_plane_formats);
	} else if (type == DRM_PLANE_TYPE_CURSOR) {
		funcs = &vbox_cursor_plane_funcs;
		formats = vbox_cursor_plane_formats;
		helper_funcs = &vbox_cursor_helper_funcs;
		num_formats = FUNC0(vbox_cursor_plane_formats);
	} else {
		return FUNC1(-EINVAL);
	}

	plane = FUNC5(sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return FUNC1(-ENOMEM);

	err = FUNC3(&vbox->ddev, plane, possible_crtcs,
				       funcs, formats, num_formats,
				       NULL, type, NULL);
	if (err)
		goto free_plane;

	FUNC2(plane, helper_funcs);

	return plane;

free_plane:
	FUNC4(plane);
	return FUNC1(-EINVAL);
}