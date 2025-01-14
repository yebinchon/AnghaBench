
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_connector_register_all (struct drm_device*) ;
 int drm_crtc_register_all (struct drm_device*) ;
 int drm_crtc_unregister_all (struct drm_device*) ;
 int drm_encoder_register_all (struct drm_device*) ;
 int drm_encoder_unregister_all (struct drm_device*) ;
 int drm_plane_register_all (struct drm_device*) ;
 int drm_plane_unregister_all (struct drm_device*) ;

int drm_modeset_register_all(struct drm_device *dev)
{
 int ret;

 ret = drm_plane_register_all(dev);
 if (ret)
  goto err_plane;

 ret = drm_crtc_register_all(dev);
 if (ret)
  goto err_crtc;

 ret = drm_encoder_register_all(dev);
 if (ret)
  goto err_encoder;

 ret = drm_connector_register_all(dev);
 if (ret)
  goto err_connector;

 return 0;

err_connector:
 drm_encoder_unregister_all(dev);
err_encoder:
 drm_crtc_unregister_all(dev);
err_crtc:
 drm_plane_unregister_all(dev);
err_plane:
 return ret;
}
