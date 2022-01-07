
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int aspace; int dev; } ;
struct a5xx_crashdumper {int ptr; int bo; int iova; } ;


 int IS_ERR (int ) ;
 int MSM_BO_UNCACHED ;
 int PTR_ERR_OR_ZERO (int ) ;
 int SZ_1M ;
 int msm_gem_kernel_new_locked (int ,int ,int ,int ,int *,int *) ;
 int msm_gem_object_set_name (int ,char*) ;

__attribute__((used)) static int a5xx_crashdumper_init(struct msm_gpu *gpu,
  struct a5xx_crashdumper *dumper)
{
 dumper->ptr = msm_gem_kernel_new_locked(gpu->dev,
  SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
  &dumper->bo, &dumper->iova);

 if (!IS_ERR(dumper->ptr))
  msm_gem_object_set_name(dumper->bo, "crashdump");

 return PTR_ERR_OR_ZERO(dumper->ptr);
}
