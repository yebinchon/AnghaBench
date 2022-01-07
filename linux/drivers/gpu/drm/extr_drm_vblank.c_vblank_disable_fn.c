
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct drm_vblank_crtc {unsigned int pipe; scalar_t__ enabled; int refcount; struct drm_device* dev; } ;
struct drm_device {int vbl_lock; } ;


 int DRM_DEBUG (char*,unsigned int) ;
 scalar_t__ atomic_read (int *) ;
 int disable_timer ;
 int drm_vblank_disable_and_save (struct drm_device*,unsigned int) ;
 struct drm_vblank_crtc* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct drm_vblank_crtc* vblank ;

__attribute__((used)) static void vblank_disable_fn(struct timer_list *t)
{
 struct drm_vblank_crtc *vblank = from_timer(vblank, t, disable_timer);
 struct drm_device *dev = vblank->dev;
 unsigned int pipe = vblank->pipe;
 unsigned long irqflags;

 spin_lock_irqsave(&dev->vbl_lock, irqflags);
 if (atomic_read(&vblank->refcount) == 0 && vblank->enabled) {
  DRM_DEBUG("disabling vblank on crtc %u\n", pipe);
  drm_vblank_disable_and_save(dev, pipe);
 }
 spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
}
