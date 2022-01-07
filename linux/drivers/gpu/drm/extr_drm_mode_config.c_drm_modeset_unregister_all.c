
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_connector_unregister_all (struct drm_device*) ;
 int drm_crtc_unregister_all (struct drm_device*) ;
 int drm_encoder_unregister_all (struct drm_device*) ;
 int drm_plane_unregister_all (struct drm_device*) ;

void drm_modeset_unregister_all(struct drm_device *dev)
{
 drm_connector_unregister_all(dev);
 drm_encoder_unregister_all(dev);
 drm_crtc_unregister_all(dev);
 drm_plane_unregister_all(dev);
}
