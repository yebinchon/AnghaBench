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
struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 struct drm_plane* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  channel_formats1 ; 
 struct drm_plane* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hibmc_plane_funcs ; 
 int /*<<< orphan*/  hibmc_plane_helper_funcs ; 

__attribute__((used)) static struct drm_plane *FUNC6(struct hibmc_drm_private *priv)
{
	struct drm_device *dev = priv->dev;
	struct drm_plane *plane;
	int ret = 0;

	plane = FUNC3(dev->dev, sizeof(*plane), GFP_KERNEL);
	if (!plane) {
		FUNC1("failed to alloc memory when init plane\n");
		return FUNC2(-ENOMEM);
	}
	/*
	 * plane init
	 * TODO: Now only support primary plane, overlay planes
	 * need to do.
	 */
	ret = FUNC5(dev, plane, 1, &hibmc_plane_funcs,
				       channel_formats1,
				       FUNC0(channel_formats1),
				       NULL,
				       DRM_PLANE_TYPE_PRIMARY,
				       NULL);
	if (ret) {
		FUNC1("failed to init plane: %d\n", ret);
		return FUNC2(ret);
	}

	FUNC4(plane, &hibmc_plane_helper_funcs);
	return plane;
}