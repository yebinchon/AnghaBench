
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devfreq; } ;
struct msm_gpu {TYPE_1__ devfreq; int name; } ;


 int DBG (char*,int ) ;
 int devfreq_suspend_device (int ) ;
 int disable_axi (struct msm_gpu*) ;
 int disable_clk (struct msm_gpu*) ;
 int disable_pwrrail (struct msm_gpu*) ;

int msm_gpu_pm_suspend(struct msm_gpu *gpu)
{
 int ret;

 DBG("%s", gpu->name);

 devfreq_suspend_device(gpu->devfreq.devfreq);

 ret = disable_axi(gpu);
 if (ret)
  return ret;

 ret = disable_clk(gpu);
 if (ret)
  return ret;

 ret = disable_pwrrail(gpu);
 if (ret)
  return ret;

 return 0;
}
