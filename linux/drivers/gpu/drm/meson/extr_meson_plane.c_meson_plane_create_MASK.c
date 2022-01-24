#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_plane {int dummy; } ;
struct meson_plane {struct drm_plane base; struct meson_drm* priv; } ;
struct meson_drm {struct drm_plane* primary_plane; TYPE_1__* drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct meson_plane* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  meson_plane_funcs ; 
 int /*<<< orphan*/  meson_plane_helper_funcs ; 
 int /*<<< orphan*/  supported_drm_formats ; 

int FUNC5(struct meson_drm *priv)
{
	struct meson_plane *meson_plane;
	struct drm_plane *plane;

	meson_plane = FUNC1(priv->drm->dev, sizeof(*meson_plane),
				   GFP_KERNEL);
	if (!meson_plane)
		return -ENOMEM;

	meson_plane->priv = priv;
	plane = &meson_plane->base;

	FUNC4(priv->drm, plane, 0xFF,
				 &meson_plane_funcs,
				 supported_drm_formats,
				 FUNC0(supported_drm_formats),
				 NULL,
				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");

	FUNC3(plane, &meson_plane_helper_funcs);

	/* For now, OSD Primary plane is always on the front */
	FUNC2(plane, 1);

	priv->primary_plane = plane;

	return 0;
}