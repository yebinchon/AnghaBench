
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct meson_overlay {struct drm_plane base; struct meson_drm* priv; } ;
struct meson_drm {struct drm_plane* overlay_plane; TYPE_1__* drm; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct meson_overlay* devm_kzalloc (int ,int,int ) ;
 int drm_plane_create_zpos_immutable_property (struct drm_plane*,int ) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (TYPE_1__*,struct drm_plane*,int,int *,int ,int ,int *,int ,char*) ;
 int meson_overlay_funcs ;
 int meson_overlay_helper_funcs ;
 int supported_drm_formats ;

int meson_overlay_create(struct meson_drm *priv)
{
 struct meson_overlay *meson_overlay;
 struct drm_plane *plane;

 DRM_DEBUG_DRIVER("\n");

 meson_overlay = devm_kzalloc(priv->drm->dev, sizeof(*meson_overlay),
       GFP_KERNEL);
 if (!meson_overlay)
  return -ENOMEM;

 meson_overlay->priv = priv;
 plane = &meson_overlay->base;

 drm_universal_plane_init(priv->drm, plane, 0xFF,
     &meson_overlay_funcs,
     supported_drm_formats,
     ARRAY_SIZE(supported_drm_formats),
     ((void*)0),
     DRM_PLANE_TYPE_OVERLAY, "meson_overlay_plane");

 drm_plane_helper_add(plane, &meson_overlay_helper_funcs);


 drm_plane_create_zpos_immutable_property(plane, 0);

 priv->overlay_plane = plane;

 DRM_DEBUG_DRIVER("\n");

 return 0;
}
