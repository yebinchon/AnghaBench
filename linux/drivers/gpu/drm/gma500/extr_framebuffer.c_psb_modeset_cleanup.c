
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {scalar_t__ modeset; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int psb_fbdev_fini (struct drm_device*) ;

void psb_modeset_cleanup(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 if (dev_priv->modeset) {
  drm_kms_helper_poll_fini(dev);
  psb_fbdev_fini(dev);
  drm_mode_config_cleanup(dev);
 }
}
