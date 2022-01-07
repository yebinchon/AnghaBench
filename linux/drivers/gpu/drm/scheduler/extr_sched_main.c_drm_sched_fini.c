
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {int ready; scalar_t__ thread; } ;


 int kthread_stop (scalar_t__) ;

void drm_sched_fini(struct drm_gpu_scheduler *sched)
{
 if (sched->thread)
  kthread_stop(sched->thread);

 sched->ready = 0;
}
