
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int inmodeset; } ;
struct drm_device {unsigned int num_crtcs; int vbl_lock; struct drm_vblank_crtc* vblank; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_reset_vblank_timestamp (struct drm_device*,unsigned int) ;
 int drm_vblank_put (struct drm_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drm_legacy_vblank_post_modeset(struct drm_device *dev,
        unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 unsigned long irqflags;


 if (!dev->num_crtcs)
  return;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;

 if (vblank->inmodeset) {
  spin_lock_irqsave(&dev->vbl_lock, irqflags);
  drm_reset_vblank_timestamp(dev, pipe);
  spin_unlock_irqrestore(&dev->vbl_lock, irqflags);

  if (vblank->inmodeset & 0x2)
   drm_vblank_put(dev, pipe);

  vblank->inmodeset = 0;
 }
}
