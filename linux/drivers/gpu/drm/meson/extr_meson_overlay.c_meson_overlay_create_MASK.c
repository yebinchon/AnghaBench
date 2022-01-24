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
struct meson_overlay {struct drm_plane base; struct meson_drm* priv; } ;
struct meson_drm {struct drm_plane* overlay_plane; TYPE_1__* drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct meson_overlay* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  meson_overlay_funcs ; 
 int /*<<< orphan*/  meson_overlay_helper_funcs ; 
 int /*<<< orphan*/  supported_drm_formats ; 

int FUNC6(struct meson_drm *priv)
{
	struct meson_overlay *meson_overlay;
	struct drm_plane *plane;

	FUNC1("\n");

	meson_overlay = FUNC2(priv->drm->dev, sizeof(*meson_overlay),
				   GFP_KERNEL);
	if (!meson_overlay)
		return -ENOMEM;

	meson_overlay->priv = priv;
	plane = &meson_overlay->base;

	FUNC5(priv->drm, plane, 0xFF,
				 &meson_overlay_funcs,
				 supported_drm_formats,
				 FUNC0(supported_drm_formats),
				 NULL,
				 DRM_PLANE_TYPE_OVERLAY, "meson_overlay_plane");

	FUNC4(plane, &meson_overlay_helper_funcs);

	/* For now, VD Overlay plane is always on the back */
	FUNC3(plane, 0);

	priv->overlay_plane = plane;

	FUNC1("\n");

	return 0;
}