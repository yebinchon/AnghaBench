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
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  armada_primary_formats ; 
 int /*<<< orphan*/  armada_primary_plane_funcs ; 
 int /*<<< orphan*/  armada_primary_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_device *drm,
	struct drm_plane *primary)
{
	int ret;

	FUNC1(primary, &armada_primary_plane_helper_funcs);

	ret = FUNC2(drm, primary, 0,
				       &armada_primary_plane_funcs,
				       armada_primary_formats,
				       FUNC0(armada_primary_formats),
				       NULL,
				       DRM_PLANE_TYPE_PRIMARY, NULL);

	return ret;
}