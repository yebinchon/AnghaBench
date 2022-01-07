
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {int dummy; } ;


 int kthread_parkme () ;
 scalar_t__ kthread_should_park () ;

__attribute__((used)) static bool drm_sched_blocked(struct drm_gpu_scheduler *sched)
{
 if (kthread_should_park()) {
  kthread_parkme();
  return 1;
 }

 return 0;
}
