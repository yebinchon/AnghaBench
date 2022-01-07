
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {int job_list_lock; int work_tdr; int ring_mirror_list; } ;


 int cancel_delayed_work (int *) ;
 scalar_t__ list_empty (int *) ;
 int mod_delayed_work (int ,int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_wq ;

void drm_sched_resume_timeout(struct drm_gpu_scheduler *sched,
  unsigned long remaining)
{
 unsigned long flags;

 spin_lock_irqsave(&sched->job_list_lock, flags);

 if (list_empty(&sched->ring_mirror_list))
  cancel_delayed_work(&sched->work_tdr);
 else
  mod_delayed_work(system_wq, &sched->work_tdr, remaining);

 spin_unlock_irqrestore(&sched->job_list_lock, flags);
}
