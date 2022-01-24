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
struct drm_device {int dummy; } ;
struct vkms_device {struct drm_device drm; } ;
struct drm_plane_helper_funcs {int dummy; } ;
struct drm_plane {int dummy; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DRM_PLANE_TYPE_CURSOR ; 
 int ENOMEM ; 
 struct drm_plane* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,struct drm_plane_helper_funcs const*) ; 
 int FUNC3 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*) ; 
 struct drm_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vkms_cursor_formats ; 
 int /*<<< orphan*/ * vkms_formats ; 
 int /*<<< orphan*/  vkms_plane_funcs ; 
 struct drm_plane_helper_funcs vkms_primary_helper_funcs ; 

struct drm_plane *FUNC6(struct vkms_device *vkmsdev,
				  enum drm_plane_type type, int index)
{
	struct drm_device *dev = &vkmsdev->drm;
	const struct drm_plane_helper_funcs *funcs;
	struct drm_plane *plane;
	const u32 *formats;
	int ret, nformats;

	plane = FUNC5(sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return FUNC1(-ENOMEM);

	if (type == DRM_PLANE_TYPE_CURSOR) {
		formats = vkms_cursor_formats;
		nformats = FUNC0(vkms_cursor_formats);
		funcs = &vkms_primary_helper_funcs;
	} else {
		formats = vkms_formats;
		nformats = FUNC0(vkms_formats);
		funcs = &vkms_primary_helper_funcs;
	}

	ret = FUNC3(dev, plane, 1 << index,
				       &vkms_plane_funcs,
				       formats, nformats,
				       NULL, type, NULL);
	if (ret) {
		FUNC4(plane);
		return FUNC1(ret);
	}

	FUNC2(plane, funcs);

	return plane;
}