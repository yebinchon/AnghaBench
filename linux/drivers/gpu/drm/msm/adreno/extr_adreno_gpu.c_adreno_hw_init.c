
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {int iova; TYPE_1__* memptrs; int seqno; int start; int next; int cur; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; int name; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ rptr; int fence; } ;


 int AXXX_CP_RB_CNTL_NO_UPDATE ;
 int DBG (char*,int ) ;
 int MSM_GPU_RB_CNTL_DEFAULT ;
 int REG_ADRENO_CP_RB_BASE ;
 int REG_ADRENO_CP_RB_BASE_HI ;
 int REG_ADRENO_CP_RB_CNTL ;
 int REG_ADRENO_CP_RB_RPTR_ADDR ;
 int REG_ADRENO_CP_RB_RPTR_ADDR_HI ;
 int adreno_gpu_write (struct adreno_gpu*,int ,int) ;
 int adreno_gpu_write64 (struct adreno_gpu*,int ,int ,int ) ;
 scalar_t__ adreno_is_a430 (struct adreno_gpu*) ;
 int adreno_load_fw (struct adreno_gpu*) ;
 int rbmemptr (struct msm_ringbuffer*,int ) ;
 int rptr ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

int adreno_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int ret, i;

 DBG("%s", gpu->name);

 ret = adreno_load_fw(adreno_gpu);
 if (ret)
  return ret;

 for (i = 0; i < gpu->nr_rings; i++) {
  struct msm_ringbuffer *ring = gpu->rb[i];

  if (!ring)
   continue;

  ring->cur = ring->start;
  ring->next = ring->start;


  ring->memptrs->fence = ring->seqno;
  ring->memptrs->rptr = 0;
 }







 adreno_gpu_write(adreno_gpu, REG_ADRENO_CP_RB_CNTL,
  MSM_GPU_RB_CNTL_DEFAULT |
  (adreno_is_a430(adreno_gpu) ? AXXX_CP_RB_CNTL_NO_UPDATE : 0));


 adreno_gpu_write64(adreno_gpu, REG_ADRENO_CP_RB_BASE,
  REG_ADRENO_CP_RB_BASE_HI, gpu->rb[0]->iova);

 if (!adreno_is_a430(adreno_gpu)) {
  adreno_gpu_write64(adreno_gpu, REG_ADRENO_CP_RB_RPTR_ADDR,
   REG_ADRENO_CP_RB_RPTR_ADDR_HI,
   rbmemptr(gpu->rb[0], rptr));
 }

 return 0;
}
