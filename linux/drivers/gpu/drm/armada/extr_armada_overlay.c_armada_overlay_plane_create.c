
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {int dummy; } ;
struct drm_plane {struct drm_mode_object base; } ;
struct drm_device {struct armada_private* dev_private; } ;
struct armada_private {int saturation_prop; int contrast_prop; int brightness_prop; int colorkey_mode_prop; int colorkey_alpha_prop; int colorkey_val_prop; int colorkey_max_prop; int colorkey_min_prop; int colorkey_prop; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int CKMODE_RGB ;
 int DEFAULT_BRIGHTNESS ;
 int DEFAULT_CONTRAST ;
 int DEFAULT_ENCODING ;
 int DEFAULT_SATURATION ;
 int DRM_COLOR_YCBCR_BT601 ;
 int DRM_COLOR_YCBCR_BT709 ;
 int DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int armada_overlay_create_properties (struct drm_device*) ;
 int armada_overlay_plane_helper_funcs ;
 int armada_ovl_formats ;
 int armada_ovl_plane_funcs ;
 int drm_object_attach_property (struct drm_mode_object*,int ,int) ;
 int drm_plane_create_color_properties (struct drm_plane*,int,int,int ,int ) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,unsigned long,int *,int ,int ,int *,int ,int *) ;
 int kfree (struct drm_plane*) ;
 struct drm_plane* kzalloc (int,int ) ;

int armada_overlay_plane_create(struct drm_device *dev, unsigned long crtcs)
{
 struct armada_private *priv = dev->dev_private;
 struct drm_mode_object *mobj;
 struct drm_plane *overlay;
 int ret;

 ret = armada_overlay_create_properties(dev);
 if (ret)
  return ret;

 overlay = kzalloc(sizeof(*overlay), GFP_KERNEL);
 if (!overlay)
  return -ENOMEM;

 drm_plane_helper_add(overlay, &armada_overlay_plane_helper_funcs);

 ret = drm_universal_plane_init(dev, overlay, crtcs,
           &armada_ovl_plane_funcs,
           armada_ovl_formats,
           ARRAY_SIZE(armada_ovl_formats),
           ((void*)0),
           DRM_PLANE_TYPE_OVERLAY, ((void*)0));
 if (ret) {
  kfree(overlay);
  return ret;
 }

 mobj = &overlay->base;
 drm_object_attach_property(mobj, priv->colorkey_prop,
       0x0101fe);
 drm_object_attach_property(mobj, priv->colorkey_min_prop,
       0x0101fe);
 drm_object_attach_property(mobj, priv->colorkey_max_prop,
       0x0101fe);
 drm_object_attach_property(mobj, priv->colorkey_val_prop,
       0x0101fe);
 drm_object_attach_property(mobj, priv->colorkey_alpha_prop,
       0x000000);
 drm_object_attach_property(mobj, priv->colorkey_mode_prop,
       CKMODE_RGB);
 drm_object_attach_property(mobj, priv->brightness_prop,
       256 + DEFAULT_BRIGHTNESS);
 drm_object_attach_property(mobj, priv->contrast_prop,
       DEFAULT_CONTRAST);
 drm_object_attach_property(mobj, priv->saturation_prop,
       DEFAULT_SATURATION);

 ret = drm_plane_create_color_properties(overlay,
      BIT(DRM_COLOR_YCBCR_BT601) |
      BIT(DRM_COLOR_YCBCR_BT709),
      BIT(DRM_COLOR_YCBCR_LIMITED_RANGE),
      DEFAULT_ENCODING,
      DRM_COLOR_YCBCR_LIMITED_RANGE);

 return ret;
}
