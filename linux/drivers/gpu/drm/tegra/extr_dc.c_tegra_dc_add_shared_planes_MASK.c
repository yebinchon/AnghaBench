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
struct tegra_windowgroup_soc {scalar_t__ dc; unsigned int num_windows; unsigned int* windows; int /*<<< orphan*/  index; } ;
struct tegra_dc {scalar_t__ pipe; TYPE_1__* soc; } ;
struct drm_plane {int /*<<< orphan*/  type; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {unsigned int num_wgrps; struct tegra_windowgroup_soc* wgrps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_TYPE_PRIMARY ; 
 scalar_t__ FUNC0 (struct drm_plane*) ; 
 struct drm_plane* FUNC1 (struct drm_device*,struct tegra_dc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct drm_plane *FUNC2(struct drm_device *drm,
						    struct tegra_dc *dc)
{
	struct drm_plane *plane, *primary = NULL;
	unsigned int i, j;

	for (i = 0; i < dc->soc->num_wgrps; i++) {
		const struct tegra_windowgroup_soc *wgrp = &dc->soc->wgrps[i];

		if (wgrp->dc == dc->pipe) {
			for (j = 0; j < wgrp->num_windows; j++) {
				unsigned int index = wgrp->windows[j];

				plane = FUNC1(drm, dc,
								  wgrp->index,
								  index);
				if (FUNC0(plane))
					return plane;

				/*
				 * Choose the first shared plane owned by this
				 * head as the primary plane.
				 */
				if (!primary) {
					plane->type = DRM_PLANE_TYPE_PRIMARY;
					primary = plane;
				}
			}
		}
	}

	return primary;
}