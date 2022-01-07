
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_job {int node; struct drm_gpu_scheduler* sched; } ;
struct drm_gpu_scheduler {int job_list_lock; int ring_mirror_list; } ;


 int drm_sched_start_timeout (struct drm_gpu_scheduler*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void drm_sched_job_begin(struct drm_sched_job *s_job)
{
 struct drm_gpu_scheduler *sched = s_job->sched;
 unsigned long flags;

 spin_lock_irqsave(&sched->job_list_lock, flags);
 list_add_tail(&s_job->node, &sched->ring_mirror_list);
 drm_sched_start_timeout(sched);
 spin_unlock_irqrestore(&sched->job_list_lock, flags);
}
