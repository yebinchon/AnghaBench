
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int gmu; } ;
struct a6xx_crashdumper {int iova; int ptr; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int REG_A6XX_CP_CRASH_DUMP_CNTL ;
 int REG_A6XX_CP_CRASH_DUMP_STATUS ;
 int REG_A6XX_CP_CRASH_SCRIPT_BASE_HI ;
 int REG_A6XX_CP_CRASH_SCRIPT_BASE_LO ;
 int a6xx_gmu_sptprac_is_on (int *) ;
 int gpu_poll_timeout (struct msm_gpu*,int ,int,int,int,int) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int wmb () ;

__attribute__((used)) static int a6xx_crashdumper_run(struct msm_gpu *gpu,
  struct a6xx_crashdumper *dumper)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 u32 val;
 int ret;

 if (IS_ERR_OR_NULL(dumper->ptr))
  return -EINVAL;

 if (!a6xx_gmu_sptprac_is_on(&a6xx_gpu->gmu))
  return -EINVAL;


 wmb();

 gpu_write64(gpu, REG_A6XX_CP_CRASH_SCRIPT_BASE_LO,
  REG_A6XX_CP_CRASH_SCRIPT_BASE_HI, dumper->iova);

 gpu_write(gpu, REG_A6XX_CP_CRASH_DUMP_CNTL, 1);

 ret = gpu_poll_timeout(gpu, REG_A6XX_CP_CRASH_DUMP_STATUS, val,
  val & 0x02, 100, 10000);

 gpu_write(gpu, REG_A6XX_CP_CRASH_DUMP_CNTL, 0);

 return ret;
}
