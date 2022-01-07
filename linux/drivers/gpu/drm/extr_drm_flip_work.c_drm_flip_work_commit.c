
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct drm_flip_work {int worker; int lock; int queued; int commited; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_splice_tail (int *,int *) ;
 int queue_work (struct workqueue_struct*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_flip_work_commit(struct drm_flip_work *work,
  struct workqueue_struct *wq)
{
 unsigned long flags;

 spin_lock_irqsave(&work->lock, flags);
 list_splice_tail(&work->queued, &work->commited);
 INIT_LIST_HEAD(&work->queued);
 spin_unlock_irqrestore(&work->lock, flags);
 queue_work(wq, &work->worker);
}
