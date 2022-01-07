
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_plane {int dummy; } ;
struct tegra_plane {int index; struct drm_plane base; struct tegra_dc* dc; } ;
struct tegra_dc {int dummy; } ;
struct drm_device {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int DRM_PLANE_TYPE_CURSOR ;
 int ENOMEM ;
 struct drm_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,unsigned long,int *,int const*,unsigned int,int *,int ,int *) ;
 int kfree (struct tegra_plane*) ;
 struct tegra_plane* kzalloc (int,int ) ;
 int * tegra_cursor_plane_formats ;
 int tegra_cursor_plane_helper_funcs ;
 int tegra_plane_funcs ;
 unsigned long tegra_plane_get_possible_crtcs (struct drm_device*) ;

__attribute__((used)) static struct drm_plane *tegra_dc_cursor_plane_create(struct drm_device *drm,
            struct tegra_dc *dc)
{
 unsigned long possible_crtcs = tegra_plane_get_possible_crtcs(drm);
 struct tegra_plane *plane;
 unsigned int num_formats;
 const u32 *formats;
 int err;

 plane = kzalloc(sizeof(*plane), GFP_KERNEL);
 if (!plane)
  return ERR_PTR(-ENOMEM);
 plane->index = 6;
 plane->dc = dc;

 num_formats = ARRAY_SIZE(tegra_cursor_plane_formats);
 formats = tegra_cursor_plane_formats;

 err = drm_universal_plane_init(drm, &plane->base, possible_crtcs,
           &tegra_plane_funcs, formats,
           num_formats, ((void*)0),
           DRM_PLANE_TYPE_CURSOR, ((void*)0));
 if (err < 0) {
  kfree(plane);
  return ERR_PTR(err);
 }

 drm_plane_helper_add(&plane->base, &tegra_cursor_plane_helper_funcs);

 return &plane->base;
}
