#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
struct rcar_du_plane {TYPE_2__ plane; struct rcar_du_group* group; } ;
struct rcar_du_group {int num_planes; int num_crtcs; int index; struct rcar_du_plane* planes; struct rcar_du_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  colorkey; } ;
struct rcar_du_device {int num_crtcs; TYPE_1__ props; int /*<<< orphan*/  ddev; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_PLANE_TYPE_OVERLAY ; 
 int DRM_PLANE_TYPE_PRIMARY ; 
 int /*<<< orphan*/  RCAR_DU_COLORKEY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  rcar_du_plane_funcs ; 
 int /*<<< orphan*/  rcar_du_plane_helper_funcs ; 

int FUNC6(struct rcar_du_group *rgrp)
{
	struct rcar_du_device *rcdu = rgrp->dev;
	unsigned int crtcs;
	unsigned int i;
	int ret;

	 /*
	  * Create one primary plane per CRTC in this group and seven overlay
	  * planes.
	  */
	rgrp->num_planes = rgrp->num_crtcs + 7;

	crtcs = ((1 << rcdu->num_crtcs) - 1) & (3 << (2 * rgrp->index));

	for (i = 0; i < rgrp->num_planes; ++i) {
		enum drm_plane_type type = i < rgrp->num_crtcs
					 ? DRM_PLANE_TYPE_PRIMARY
					 : DRM_PLANE_TYPE_OVERLAY;
		struct rcar_du_plane *plane = &rgrp->planes[i];

		plane->group = rgrp;

		ret = FUNC5(rcdu->ddev, &plane->plane, crtcs,
					       &rcar_du_plane_funcs, formats,
					       FUNC0(formats),
					       NULL, type, NULL);
		if (ret < 0)
			return ret;

		FUNC4(&plane->plane,
				     &rcar_du_plane_helper_funcs);

		FUNC2(&plane->plane);

		if (type == DRM_PLANE_TYPE_PRIMARY)
			continue;

		FUNC1(&plane->plane.base,
					   rcdu->props.colorkey,
					   RCAR_DU_COLORKEY_NONE);
		FUNC3(&plane->plane, 1, 1, 7);
	}

	return 0;
}