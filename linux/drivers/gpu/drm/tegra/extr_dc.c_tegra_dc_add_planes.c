
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_dc {TYPE_1__* soc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int (* destroy ) (struct drm_plane*) ;} ;
struct TYPE_3__ {scalar_t__ supports_cursor; } ;


 struct drm_plane* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_plane*) ;
 int PTR_ERR (struct drm_plane*) ;
 int stub1 (struct drm_plane*) ;
 int stub2 (struct drm_plane*) ;
 struct drm_plane* tegra_dc_overlay_plane_create (struct drm_device*,struct tegra_dc*,int,int) ;
 TYPE_2__ tegra_plane_funcs ;
 struct drm_plane* tegra_primary_plane_create (struct drm_device*,struct tegra_dc*) ;

__attribute__((used)) static struct drm_plane *tegra_dc_add_planes(struct drm_device *drm,
          struct tegra_dc *dc)
{
 struct drm_plane *planes[2], *primary;
 unsigned int planes_num;
 unsigned int i;
 int err;

 primary = tegra_primary_plane_create(drm, dc);
 if (IS_ERR(primary))
  return primary;

 if (dc->soc->supports_cursor)
  planes_num = 2;
 else
  planes_num = 1;

 for (i = 0; i < planes_num; i++) {
  planes[i] = tegra_dc_overlay_plane_create(drm, dc, 1 + i,
         0);
  if (IS_ERR(planes[i])) {
   err = PTR_ERR(planes[i]);

   while (i--)
    tegra_plane_funcs.destroy(planes[i]);

   tegra_plane_funcs.destroy(primary);
   return ERR_PTR(err);
  }
 }

 return primary;
}
