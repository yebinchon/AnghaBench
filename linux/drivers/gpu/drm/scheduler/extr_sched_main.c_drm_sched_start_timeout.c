
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {scalar_t__ timeout; int work_tdr; int ring_mirror_list; } ;


 scalar_t__ MAX_SCHEDULE_TIMEOUT ;
 int list_empty (int *) ;
 int schedule_delayed_work (int *,scalar_t__) ;

__attribute__((used)) static void drm_sched_start_timeout(struct drm_gpu_scheduler *sched)
{
 if (sched->timeout != MAX_SCHEDULE_TIMEOUT &&
     !list_empty(&sched->ring_mirror_list))
  schedule_delayed_work(&sched->work_tdr, sched->timeout);
}
