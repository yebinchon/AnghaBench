
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int disable_timer; int refcount; int queue; int enabled; } ;
struct drm_device {unsigned int num_crtcs; int event_lock; scalar_t__ vblank_disable_immediate; int vblank_time_lock; struct drm_vblank_crtc* vblank; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_read (int *) ;
 int drm_handle_vblank_events (struct drm_device*,unsigned int) ;
 int drm_update_vblank_count (struct drm_device*,unsigned int,int) ;
 scalar_t__ drm_vblank_offdelay ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vblank_disable_fn (int *) ;
 int wake_up (int *) ;

bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 unsigned long irqflags;
 bool disable_irq;

 if (WARN_ON_ONCE(!dev->num_crtcs))
  return 0;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return 0;

 spin_lock_irqsave(&dev->event_lock, irqflags);





 spin_lock(&dev->vblank_time_lock);


 if (!vblank->enabled) {
  spin_unlock(&dev->vblank_time_lock);
  spin_unlock_irqrestore(&dev->event_lock, irqflags);
  return 0;
 }

 drm_update_vblank_count(dev, pipe, 1);

 spin_unlock(&dev->vblank_time_lock);

 wake_up(&vblank->queue);






 disable_irq = (dev->vblank_disable_immediate &&
         drm_vblank_offdelay > 0 &&
         !atomic_read(&vblank->refcount));

 drm_handle_vblank_events(dev, pipe);

 spin_unlock_irqrestore(&dev->event_lock, irqflags);

 if (disable_irq)
  vblank_disable_fn(&vblank->disable_timer);

 return 1;
}
