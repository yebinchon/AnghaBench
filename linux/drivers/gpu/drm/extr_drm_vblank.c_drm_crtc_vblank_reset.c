
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int inmodeset; int refcount; } ;
struct drm_device {int vblank_event_list; int vbl_lock; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_crtc_vblank_reset(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 unsigned long irqflags;
 unsigned int pipe = drm_crtc_index(crtc);
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 spin_lock_irqsave(&dev->vbl_lock, irqflags);




 if (!vblank->inmodeset) {
  atomic_inc(&vblank->refcount);
  vblank->inmodeset = 1;
 }
 spin_unlock_irqrestore(&dev->vbl_lock, irqflags);

 WARN_ON(!list_empty(&dev->vblank_event_list));
}
