
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_pending_event {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_event {int dummy; } ;
struct drm_device {int event_lock; } ;


 int drm_event_reserve_init_locked (struct drm_device*,struct drm_file*,struct drm_pending_event*,struct drm_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int drm_event_reserve_init(struct drm_device *dev,
      struct drm_file *file_priv,
      struct drm_pending_event *p,
      struct drm_event *e)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&dev->event_lock, flags);
 ret = drm_event_reserve_init_locked(dev, file_priv, p, e);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return ret;
}
