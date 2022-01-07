
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {scalar_t__ gpu_reg; scalar_t__ gpu_cx; } ;


 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int disable_pwrrail(struct msm_gpu *gpu)
{
 if (gpu->gpu_cx)
  regulator_disable(gpu->gpu_cx);
 if (gpu->gpu_reg)
  regulator_disable(gpu->gpu_reg);
 return 0;
}
