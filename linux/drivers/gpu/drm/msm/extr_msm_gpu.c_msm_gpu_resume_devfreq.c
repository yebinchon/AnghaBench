
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devfreq; int time; scalar_t__ busy_cycles; } ;
struct msm_gpu {TYPE_1__ devfreq; } ;


 int devfreq_resume_device (int ) ;
 int ktime_get () ;

void msm_gpu_resume_devfreq(struct msm_gpu *gpu)
{
 gpu->devfreq.busy_cycles = 0;
 gpu->devfreq.time = ktime_get();

 devfreq_resume_device(gpu->devfreq.devfreq);
}
