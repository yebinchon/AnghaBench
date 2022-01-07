
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_1__* dev; } ;
struct msm_gem_submit {unsigned int seqno; unsigned int nr_cmds; TYPE_2__* cmd; struct msm_ringbuffer* ring; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int gmu; } ;
struct TYPE_4__ {int type; int size; int iova; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int CACHE_FLUSH_TS ;
 int CP_EVENT_WRITE ;
 int CP_INDIRECT_BUFFER_PFE ;
 unsigned int MSM_GPU_SUBMIT_STATS_COUNT ;



 int OUT_PKT4 (struct msm_ringbuffer*,int ,int) ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int PC_CCU_INVALIDATE_COLOR ;
 int PC_CCU_INVALIDATE_DEPTH ;
 int REG_A6XX_CP_SCRATCH_REG (int) ;
 int REG_A6XX_GMU_ALWAYS_ON_COUNTER_H ;
 scalar_t__ REG_A6XX_GMU_ALWAYS_ON_COUNTER_L ;
 scalar_t__ REG_A6XX_RBBM_PERFCTR_CP_0_LO ;
 int a6xx_flush (struct msm_gpu*,struct msm_ringbuffer*) ;
 int alwayson_end ;
 int alwayson_start ;
 int cpcycles_end ;
 int cpcycles_start ;
 int fence ;
 int get_stats_counter (struct msm_ringbuffer*,scalar_t__,int ) ;
 int gmu_read64 (int *,scalar_t__,int ) ;
 int lower_32_bits (int ) ;
 int rbmemptr (struct msm_ringbuffer*,int ) ;
 int rbmemptr_stats (struct msm_ringbuffer*,unsigned int,int ) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int trace_msm_gpu_submit_flush (struct msm_gem_submit*,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void a6xx_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit,
 struct msm_file_private *ctx)
{
 unsigned int index = submit->seqno % MSM_GPU_SUBMIT_STATS_COUNT;
 struct msm_drm_private *priv = gpu->dev->dev_private;
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 struct msm_ringbuffer *ring = submit->ring;
 unsigned int i;

 get_stats_counter(ring, REG_A6XX_RBBM_PERFCTR_CP_0_LO,
  rbmemptr_stats(ring, index, cpcycles_start));






 get_stats_counter(ring, REG_A6XX_GMU_ALWAYS_ON_COUNTER_L + 0x1a800,
  rbmemptr_stats(ring, index, alwayson_start));


 OUT_PKT7(ring, CP_EVENT_WRITE, 1);
 OUT_RING(ring, PC_CCU_INVALIDATE_DEPTH);

 OUT_PKT7(ring, CP_EVENT_WRITE, 1);
 OUT_RING(ring, PC_CCU_INVALIDATE_COLOR);


 for (i = 0; i < submit->nr_cmds; i++) {
  switch (submit->cmd[i].type) {
  case 128:
   break;
  case 129:
   if (priv->lastctx == ctx)
    break;

  case 130:
   OUT_PKT7(ring, CP_INDIRECT_BUFFER_PFE, 3);
   OUT_RING(ring, lower_32_bits(submit->cmd[i].iova));
   OUT_RING(ring, upper_32_bits(submit->cmd[i].iova));
   OUT_RING(ring, submit->cmd[i].size);
   break;
  }
 }

 get_stats_counter(ring, REG_A6XX_RBBM_PERFCTR_CP_0_LO,
  rbmemptr_stats(ring, index, cpcycles_end));
 get_stats_counter(ring, REG_A6XX_GMU_ALWAYS_ON_COUNTER_L + 0x1a800,
  rbmemptr_stats(ring, index, alwayson_end));


 OUT_PKT4(ring, REG_A6XX_CP_SCRATCH_REG(2), 1);
 OUT_RING(ring, submit->seqno);





 OUT_PKT7(ring, CP_EVENT_WRITE, 4);
 OUT_RING(ring, CACHE_FLUSH_TS | (1 << 31));
 OUT_RING(ring, lower_32_bits(rbmemptr(ring, fence)));
 OUT_RING(ring, upper_32_bits(rbmemptr(ring, fence)));
 OUT_RING(ring, submit->seqno);

 trace_msm_gpu_submit_flush(submit,
  gmu_read64(&a6xx_gpu->gmu, REG_A6XX_GMU_ALWAYS_ON_COUNTER_L,
   REG_A6XX_GMU_ALWAYS_ON_COUNTER_H));

 a6xx_flush(gpu, ring);
}
