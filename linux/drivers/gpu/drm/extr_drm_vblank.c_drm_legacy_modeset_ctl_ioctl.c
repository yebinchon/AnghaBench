
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_ctl {unsigned int crtc; int cmd; } ;
struct drm_file {int dummy; } ;
struct drm_device {unsigned int num_crtcs; } ;


 int DRIVER_LEGACY ;
 int EINVAL ;


 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_legacy_vblank_post_modeset (struct drm_device*,unsigned int) ;
 int drm_legacy_vblank_pre_modeset (struct drm_device*,unsigned int) ;

int drm_legacy_modeset_ctl_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 struct drm_modeset_ctl *modeset = data;
 unsigned int pipe;


 if (!dev->num_crtcs)
  return 0;


 if (!drm_core_check_feature(dev, DRIVER_LEGACY))
  return 0;

 pipe = modeset->crtc;
 if (pipe >= dev->num_crtcs)
  return -EINVAL;

 switch (modeset->cmd) {
 case 128:
  drm_legacy_vblank_pre_modeset(dev, pipe);
  break;
 case 129:
  drm_legacy_vblank_post_modeset(dev, pipe);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
