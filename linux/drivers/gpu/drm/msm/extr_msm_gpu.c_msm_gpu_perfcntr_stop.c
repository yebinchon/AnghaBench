
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {int perfcntr_active; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put_sync (int *) ;

void msm_gpu_perfcntr_stop(struct msm_gpu *gpu)
{
 gpu->perfcntr_active = 0;
 pm_runtime_put_sync(&gpu->pdev->dev);
}
