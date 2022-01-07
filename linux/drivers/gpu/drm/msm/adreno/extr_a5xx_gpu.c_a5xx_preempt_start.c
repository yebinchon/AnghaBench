
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {size_t id; } ;
struct msm_gpu {int nr_rings; TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int * preempt_iova; } ;
struct TYPE_2__ {int (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;


 int CP_CONTEXT_SWITCH_YIELD ;
 int CP_PREEMPT_ENABLE_GLOBAL ;
 int CP_PREEMPT_ENABLE_LOCAL ;
 int CP_SET_PROTECTED_MODE ;
 int CP_YIELD_ENABLE ;
 int EINVAL ;
 int OUT_PKT4 (struct msm_ringbuffer*,int ,int) ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO ;
 scalar_t__ a5xx_idle (struct msm_gpu*,struct msm_ringbuffer*) ;
 int lower_32_bits (int ) ;
 int stub1 (struct msm_gpu*,struct msm_ringbuffer*) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int a5xx_preempt_start(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 struct msm_ringbuffer *ring = gpu->rb[0];

 if (gpu->nr_rings == 1)
  return 0;


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 0);


 OUT_PKT4(ring, REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, 2);
 OUT_RING(ring, lower_32_bits(a5xx_gpu->preempt_iova[ring->id]));
 OUT_RING(ring, upper_32_bits(a5xx_gpu->preempt_iova[ring->id]));


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 1);

 OUT_PKT7(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
 OUT_RING(ring, 0x00);

 OUT_PKT7(ring, CP_PREEMPT_ENABLE_LOCAL, 1);
 OUT_RING(ring, 0x01);

 OUT_PKT7(ring, CP_YIELD_ENABLE, 1);
 OUT_RING(ring, 0x01);


 OUT_PKT7(ring, CP_CONTEXT_SWITCH_YIELD, 4);
 OUT_RING(ring, 0x00);
 OUT_RING(ring, 0x00);
 OUT_RING(ring, 0x01);
 OUT_RING(ring, 0x01);

 gpu->funcs->flush(gpu, ring);

 return a5xx_idle(gpu, ring) ? 0 : -EINVAL;
}
