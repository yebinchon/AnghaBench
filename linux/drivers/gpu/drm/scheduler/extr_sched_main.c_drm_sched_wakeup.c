
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {int wake_up_worker; } ;


 scalar_t__ drm_sched_ready (struct drm_gpu_scheduler*) ;
 int wake_up_interruptible (int *) ;

void drm_sched_wakeup(struct drm_gpu_scheduler *sched)
{
 if (drm_sched_ready(sched))
  wake_up_interruptible(&sched->wake_up_worker);
}
