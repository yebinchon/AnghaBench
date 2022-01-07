
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * devfreq; } ;
struct msm_gpu {TYPE_3__ devfreq; TYPE_1__* pdev; int fast_rate; TYPE_2__* funcs; } ;
struct TYPE_9__ {int initial_freq; } ;
struct TYPE_7__ {int gpu_busy; } ;
struct TYPE_6__ {int dev; } ;


 int DEVFREQ_GOV_SIMPLE_ONDEMAND ;
 int DRM_DEV_ERROR (int *,char*) ;
 scalar_t__ IS_ERR (int *) ;
 int devfreq_suspend_device (int *) ;
 int * devm_devfreq_add_device (int *,TYPE_4__*,int ,int *) ;
 TYPE_4__ msm_devfreq_profile ;

__attribute__((used)) static void msm_devfreq_init(struct msm_gpu *gpu)
{

 if (!gpu->funcs->gpu_busy)
  return;

 msm_devfreq_profile.initial_freq = gpu->fast_rate;






 gpu->devfreq.devfreq = devm_devfreq_add_device(&gpu->pdev->dev,
   &msm_devfreq_profile, DEVFREQ_GOV_SIMPLE_ONDEMAND,
   ((void*)0));

 if (IS_ERR(gpu->devfreq.devfreq)) {
  DRM_DEV_ERROR(&gpu->pdev->dev, "Couldn't initialize GPU devfreq\n");
  gpu->devfreq.devfreq = ((void*)0);
 }

 devfreq_suspend_device(gpu->devfreq.devfreq);
}
