
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int time; int active; } ;
struct msm_gpu {int perfcntr_active; int perf_lock; scalar_t__ totaltime; scalar_t__ activetime; TYPE_2__ last_sample; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ktime_get () ;
 int msm_gpu_active (struct msm_gpu*) ;
 int pm_runtime_get_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_hw_cntrs (struct msm_gpu*,int ,int *) ;

void msm_gpu_perfcntr_start(struct msm_gpu *gpu)
{
 unsigned long flags;

 pm_runtime_get_sync(&gpu->pdev->dev);

 spin_lock_irqsave(&gpu->perf_lock, flags);

 gpu->last_sample.active = msm_gpu_active(gpu);
 gpu->last_sample.time = ktime_get();
 gpu->activetime = gpu->totaltime = 0;
 gpu->perfcntr_active = 1;
 update_hw_cntrs(gpu, 0, ((void*)0));
 spin_unlock_irqrestore(&gpu->perf_lock, flags);
}
