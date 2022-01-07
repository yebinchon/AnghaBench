
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int inmodeset; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ drm_vblank_get (struct drm_device*,unsigned int) ;

__attribute__((used)) static void drm_legacy_vblank_pre_modeset(struct drm_device *dev,
       unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];


 if (!dev->num_crtcs)
  return;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;
 if (!vblank->inmodeset) {
  vblank->inmodeset = 0x1;
  if (drm_vblank_get(dev, pipe) == 0)
   vblank->inmodeset |= 0x2;
 }
}
