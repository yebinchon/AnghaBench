
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int refcount; scalar_t__ inmodeset; int enabled; } ;
struct drm_device {unsigned int num_crtcs; int vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DRM_DEBUG_VBL (char*,unsigned int,int ,scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;
 int drm_reset_vblank_timestamp (struct drm_device*,unsigned int) ;
 int drm_vblank_enable (struct drm_device*,unsigned int) ;
 scalar_t__ drm_vblank_offdelay ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_crtc_vblank_on(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 unsigned int pipe = drm_crtc_index(crtc);
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 unsigned long irqflags;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;

 spin_lock_irqsave(&dev->vbl_lock, irqflags);
 DRM_DEBUG_VBL("crtc %d, vblank enabled %d, inmodeset %d\n",
        pipe, vblank->enabled, vblank->inmodeset);


 if (vblank->inmodeset) {
  atomic_dec(&vblank->refcount);
  vblank->inmodeset = 0;
 }

 drm_reset_vblank_timestamp(dev, pipe);





 if (atomic_read(&vblank->refcount) != 0 || drm_vblank_offdelay == 0)
  WARN_ON(drm_vblank_enable(dev, pipe));
 spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
}
