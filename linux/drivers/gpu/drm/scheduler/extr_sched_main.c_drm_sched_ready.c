
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {scalar_t__ hw_submission_limit; int hw_rq_count; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool drm_sched_ready(struct drm_gpu_scheduler *sched)
{
 return atomic_read(&sched->hw_rq_count) <
  sched->hw_submission_limit;
}
