
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_pending_event {TYPE_1__* file_priv; int link; int pending_link; scalar_t__ fence; int * completion; int (* completion_release ) (int *) ;} ;
struct drm_device {int event_lock; } ;
struct TYPE_2__ {int event_wait; int event_list; } ;


 int assert_spin_locked (int *) ;
 int complete_all (int *) ;
 int dma_fence_put (scalar_t__) ;
 int dma_fence_signal (scalar_t__) ;
 int kfree (struct drm_pending_event*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int stub1 (int *) ;
 int wake_up_interruptible (int *) ;

void drm_send_event_locked(struct drm_device *dev, struct drm_pending_event *e)
{
 assert_spin_locked(&dev->event_lock);

 if (e->completion) {
  complete_all(e->completion);
  e->completion_release(e->completion);
  e->completion = ((void*)0);
 }

 if (e->fence) {
  dma_fence_signal(e->fence);
  dma_fence_put(e->fence);
 }

 if (!e->file_priv) {
  kfree(e);
  return;
 }

 list_del(&e->pending_link);
 list_add_tail(&e->link,
        &e->file_priv->event_list);
 wake_up_interruptible(&e->file_priv->event_wait);
}
