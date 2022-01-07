
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int disable_timer; int enabled; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;


 int DRIVER_MODESET ;
 scalar_t__ READ_ONCE (int ) ;
 int WARN_ON (int) ;
 int del_timer_sync (int *) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int kfree (struct drm_vblank_crtc*) ;

void drm_vblank_cleanup(struct drm_device *dev)
{
 unsigned int pipe;


 if (dev->num_crtcs == 0)
  return;

 for (pipe = 0; pipe < dev->num_crtcs; pipe++) {
  struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

  WARN_ON(READ_ONCE(vblank->enabled) &&
   drm_core_check_feature(dev, DRIVER_MODESET));

  del_timer_sync(&vblank->disable_timer);
 }

 kfree(dev->vblank);

 dev->num_crtcs = 0;
}
