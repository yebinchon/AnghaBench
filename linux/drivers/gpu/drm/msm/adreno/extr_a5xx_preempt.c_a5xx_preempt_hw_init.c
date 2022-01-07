
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_gpu {int nr_rings; TYPE_2__** rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {TYPE_1__** preempt; TYPE_2__* cur_ring; } ;
struct TYPE_4__ {int iova; } ;
struct TYPE_3__ {int rbase; scalar_t__ rptr; scalar_t__ wptr; } ;


 int PREEMPT_NONE ;
 int REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_HI ;
 int REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_LO ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int ) ;
 int set_preempt_state (struct a5xx_gpu*,int ) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void a5xx_preempt_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 int i;


 a5xx_gpu->cur_ring = gpu->rb[0];


 if (gpu->nr_rings == 1)
  return;

 for (i = 0; i < gpu->nr_rings; i++) {
  a5xx_gpu->preempt[i]->wptr = 0;
  a5xx_gpu->preempt[i]->rptr = 0;
  a5xx_gpu->preempt[i]->rbase = gpu->rb[i]->iova;
 }


 gpu_write64(gpu, REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_LO,
  REG_A5XX_CP_CONTEXT_SWITCH_SMMU_INFO_HI, 0);


 set_preempt_state(a5xx_gpu, PREEMPT_NONE);
}
