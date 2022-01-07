
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gpu_scheduler {int work_tdr; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

void drm_sched_fault(struct drm_gpu_scheduler *sched)
{
 mod_delayed_work(system_wq, &sched->work_tdr, 0);
}
