
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_windowgroup_soc {scalar_t__ dc; unsigned int num_windows; unsigned int* windows; int index; } ;
struct tegra_dc {scalar_t__ pipe; TYPE_1__* soc; } ;
struct drm_plane {int type; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {unsigned int num_wgrps; struct tegra_windowgroup_soc* wgrps; } ;


 int DRM_PLANE_TYPE_PRIMARY ;
 scalar_t__ IS_ERR (struct drm_plane*) ;
 struct drm_plane* tegra_shared_plane_create (struct drm_device*,struct tegra_dc*,int ,unsigned int) ;

__attribute__((used)) static struct drm_plane *tegra_dc_add_shared_planes(struct drm_device *drm,
          struct tegra_dc *dc)
{
 struct drm_plane *plane, *primary = ((void*)0);
 unsigned int i, j;

 for (i = 0; i < dc->soc->num_wgrps; i++) {
  const struct tegra_windowgroup_soc *wgrp = &dc->soc->wgrps[i];

  if (wgrp->dc == dc->pipe) {
   for (j = 0; j < wgrp->num_windows; j++) {
    unsigned int index = wgrp->windows[j];

    plane = tegra_shared_plane_create(drm, dc,
          wgrp->index,
          index);
    if (IS_ERR(plane))
     return plane;





    if (!primary) {
     plane->type = DRM_PLANE_TYPE_PRIMARY;
     primary = plane;
    }
   }
  }
 }

 return primary;
}
