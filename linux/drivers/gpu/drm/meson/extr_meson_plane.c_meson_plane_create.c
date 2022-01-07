
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct meson_plane {struct drm_plane base; struct meson_drm* priv; } ;
struct meson_drm {struct drm_plane* primary_plane; TYPE_1__* drm; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct meson_plane* devm_kzalloc (int ,int,int ) ;
 int drm_plane_create_zpos_immutable_property (struct drm_plane*,int) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (TYPE_1__*,struct drm_plane*,int,int *,int ,int ,int *,int ,char*) ;
 int meson_plane_funcs ;
 int meson_plane_helper_funcs ;
 int supported_drm_formats ;

int meson_plane_create(struct meson_drm *priv)
{
 struct meson_plane *meson_plane;
 struct drm_plane *plane;

 meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
       GFP_KERNEL);
 if (!meson_plane)
  return -ENOMEM;

 meson_plane->priv = priv;
 plane = &meson_plane->base;

 drm_universal_plane_init(priv->drm, plane, 0xFF,
     &meson_plane_funcs,
     supported_drm_formats,
     ARRAY_SIZE(supported_drm_formats),
     ((void*)0),
     DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");

 drm_plane_helper_add(plane, &meson_plane_helper_funcs);


 drm_plane_create_zpos_immutable_property(plane, 1);

 priv->primary_plane = plane;

 return 0;
}
