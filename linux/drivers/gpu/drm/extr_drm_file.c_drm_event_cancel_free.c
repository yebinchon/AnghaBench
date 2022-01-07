
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_pending_event {scalar_t__ fence; int pending_link; TYPE_2__* event; TYPE_1__* file_priv; } ;
struct drm_device {int event_lock; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_3__ {int event_space; } ;


 int dma_fence_put (scalar_t__) ;
 int kfree (struct drm_pending_event*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_event_cancel_free(struct drm_device *dev,
      struct drm_pending_event *p)
{
 unsigned long flags;
 spin_lock_irqsave(&dev->event_lock, flags);
 if (p->file_priv) {
  p->file_priv->event_space += p->event->length;
  list_del(&p->pending_link);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);

 if (p->fence)
  dma_fence_put(p->fence);

 kfree(p);
}
