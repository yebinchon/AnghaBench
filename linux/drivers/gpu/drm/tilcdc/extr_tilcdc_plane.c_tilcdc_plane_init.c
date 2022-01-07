
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_drm_private {int num_pixelformats; int pixelformats; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dev; struct tilcdc_drm_private* dev_private; } ;


 int dev_err (int ,char*,int) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_plane_init (struct drm_device*,struct drm_plane*,int,int *,int ,int ,int) ;
 int plane_helper_funcs ;
 int tilcdc_plane_funcs ;

int tilcdc_plane_init(struct drm_device *dev,
        struct drm_plane *plane)
{
 struct tilcdc_drm_private *priv = dev->dev_private;
 int ret;

 ret = drm_plane_init(dev, plane, 1,
        &tilcdc_plane_funcs,
        priv->pixelformats,
        priv->num_pixelformats,
        1);
 if (ret) {
  dev_err(dev->dev, "Failed to initialize plane: %d\n", ret);
  return ret;
 }

 drm_plane_helper_add(plane, &plane_helper_funcs);

 return 0;
}
