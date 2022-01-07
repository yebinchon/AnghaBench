
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_flip_work {int lock; int queued; } ;
struct drm_flip_task {int node; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_flip_work_queue_task(struct drm_flip_work *work,
         struct drm_flip_task *task)
{
 unsigned long flags;

 spin_lock_irqsave(&work->lock, flags);
 list_add_tail(&task->node, &work->queued);
 spin_unlock_irqrestore(&work->lock, flags);
}
