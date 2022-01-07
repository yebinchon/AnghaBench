
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_pending_event {int dummy; } ;
struct drm_device {int event_lock; } ;


 int drm_send_event_locked (struct drm_device*,struct drm_pending_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_send_event(struct drm_device *dev, struct drm_pending_event *e)
{
 unsigned long irqflags;

 spin_lock_irqsave(&dev->event_lock, irqflags);
 drm_send_event_locked(dev, e);
 spin_unlock_irqrestore(&dev->event_lock, irqflags);
}
