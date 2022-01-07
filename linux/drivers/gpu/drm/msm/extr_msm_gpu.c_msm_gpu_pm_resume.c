
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int needs_hw_init; int name; } ;


 int DBG (char*,int ) ;
 int enable_axi (struct msm_gpu*) ;
 int enable_clk (struct msm_gpu*) ;
 int enable_pwrrail (struct msm_gpu*) ;
 int msm_gpu_resume_devfreq (struct msm_gpu*) ;

int msm_gpu_pm_resume(struct msm_gpu *gpu)
{
 int ret;

 DBG("%s", gpu->name);

 ret = enable_pwrrail(gpu);
 if (ret)
  return ret;

 ret = enable_clk(gpu);
 if (ret)
  return ret;

 ret = enable_axi(gpu);
 if (ret)
  return ret;

 msm_gpu_resume_devfreq(gpu);

 gpu->needs_hw_init = 1;

 return 0;
}
