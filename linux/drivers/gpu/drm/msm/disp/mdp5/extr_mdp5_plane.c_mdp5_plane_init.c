
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int base; } ;
struct mdp5_plane {int nformats; int formats; struct drm_plane base; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct drm_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_plane_enable_fb_damage_clips (struct drm_plane*) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int *,int ,int ,int *,int,int *) ;
 struct mdp5_plane* kzalloc (int,int ) ;
 int mdp5_plane_destroy (struct drm_plane*) ;
 int mdp5_plane_funcs ;
 int mdp5_plane_helper_funcs ;
 int mdp5_plane_install_properties (struct drm_plane*,int *) ;
 int mdp_get_formats (int ,int ,int) ;

struct drm_plane *mdp5_plane_init(struct drm_device *dev,
      enum drm_plane_type type)
{
 struct drm_plane *plane = ((void*)0);
 struct mdp5_plane *mdp5_plane;
 int ret;

 mdp5_plane = kzalloc(sizeof(*mdp5_plane), GFP_KERNEL);
 if (!mdp5_plane) {
  ret = -ENOMEM;
  goto fail;
 }

 plane = &mdp5_plane->base;

 mdp5_plane->nformats = mdp_get_formats(mdp5_plane->formats,
  ARRAY_SIZE(mdp5_plane->formats), 0);

 ret = drm_universal_plane_init(dev, plane, 0xff, &mdp5_plane_funcs,
   mdp5_plane->formats, mdp5_plane->nformats,
   ((void*)0), type, ((void*)0));
 if (ret)
  goto fail;

 drm_plane_helper_add(plane, &mdp5_plane_helper_funcs);

 mdp5_plane_install_properties(plane, &plane->base);

 drm_plane_enable_fb_damage_clips(plane);

 return plane;

fail:
 if (plane)
  mdp5_plane_destroy(plane);

 return ERR_PTR(ret);
}
