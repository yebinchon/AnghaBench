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
typedef  int /*<<< orphan*/  uint32_t ;
struct qxl_device {int /*<<< orphan*/  ddev; } ;
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
 struct drm_plane_helper_funcs primary_helper_funcs ; 
 struct drm_plane_helper_funcs qxl_cursor_helper_funcs ; 
 int /*<<< orphan*/ * qxl_cursor_plane_formats ; 
 struct drm_plane_funcs qxl_cursor_plane_funcs ; 
 int /*<<< orphan*/ * qxl_primary_plane_formats ; 
 struct drm_plane_funcs qxl_primary_plane_funcs ; 

__attribute__((used)) static struct drm_plane *FUNC6(struct qxl_device *qdev,
					  unsigned int possible_crtcs,
					  enum drm_plane_type type)
{
	const struct drm_plane_helper_funcs *helper_funcs = NULL;
	struct drm_plane *plane;
	const struct drm_plane_funcs *funcs;
	const uint32_t *formats;
	int num_formats;
	int err;

	if (type == DRM_PLANE_TYPE_PRIMARY) {
		funcs = &qxl_primary_plane_funcs;
		formats = qxl_primary_plane_formats;
		num_formats = FUNC0(qxl_primary_plane_formats);
		helper_funcs = &primary_helper_funcs;
	} else if (type == DRM_PLANE_TYPE_CURSOR) {
		funcs = &qxl_cursor_plane_funcs;
		formats = qxl_cursor_plane_formats;
		helper_funcs = &qxl_cursor_helper_funcs;
		num_formats = FUNC0(qxl_cursor_plane_formats);
	} else {
		return FUNC1(-EINVAL);
	}

	plane = FUNC5(sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return FUNC1(-ENOMEM);

	err = FUNC3(&qdev->ddev, plane, possible_crtcs,
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