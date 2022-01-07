
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_ringbuffer {size_t id; } ;
struct msm_gpu {TYPE_1__* dev; } ;
struct msm_gem_submit {unsigned int nr_cmds; int seqno; TYPE_2__* cmd; struct msm_ringbuffer* ring; scalar_t__ in_rb; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int * preempt_iova; } ;
struct TYPE_4__ {int type; int size; int iova; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int CACHE_FLUSH_TS ;
 int CONFIG_DRM_MSM_GPU_SUDO ;
 int CP_CONTEXT_SWITCH_YIELD ;
 int CP_EVENT_WRITE ;
 int CP_INDIRECT_BUFFER_PFE ;
 int CP_PREEMPT_ENABLE_GLOBAL ;
 int CP_SET_PROTECTED_MODE ;
 int CP_SET_RENDER_MODE ;
 int CP_YIELD_ENABLE ;
 scalar_t__ IS_ENABLED (int ) ;



 int OUT_PKT4 (struct msm_ringbuffer*,int ,int) ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO ;
 int REG_A5XX_CP_SCRATCH_REG (int) ;
 int a5xx_flush (struct msm_gpu*,struct msm_ringbuffer*) ;
 int a5xx_preempt_trigger (struct msm_gpu*) ;
 int a5xx_submit_in_rb (struct msm_gpu*,struct msm_gem_submit*,struct msm_file_private*) ;
 int fence ;
 int lower_32_bits (int ) ;
 int rbmemptr (struct msm_ringbuffer*,int ) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void a5xx_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit,
 struct msm_file_private *ctx)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 struct msm_drm_private *priv = gpu->dev->dev_private;
 struct msm_ringbuffer *ring = submit->ring;
 unsigned int i, ibs = 0;

 if (IS_ENABLED(CONFIG_DRM_MSM_GPU_SUDO) && submit->in_rb) {
  priv->lastctx = ((void*)0);
  a5xx_submit_in_rb(gpu, submit, ctx);
  return;
 }

 OUT_PKT7(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
 OUT_RING(ring, 0x02);


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 0);


 OUT_PKT4(ring, REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, 2);
 OUT_RING(ring, lower_32_bits(a5xx_gpu->preempt_iova[submit->ring->id]));
 OUT_RING(ring, upper_32_bits(a5xx_gpu->preempt_iova[submit->ring->id]));


 OUT_PKT7(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 1);


 OUT_PKT7(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
 OUT_RING(ring, 0x02);


 OUT_PKT7(ring, CP_YIELD_ENABLE, 1);
 OUT_RING(ring, 0x02);


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
   ibs++;
   break;
  }
 }






 OUT_PKT7(ring, CP_SET_RENDER_MODE, 5);
 OUT_RING(ring, 0);
 OUT_RING(ring, 0);
 OUT_RING(ring, 0);
 OUT_RING(ring, 0);
 OUT_RING(ring, 0);


 OUT_PKT7(ring, CP_YIELD_ENABLE, 1);
 OUT_RING(ring, 0x01);


 OUT_PKT4(ring, REG_A5XX_CP_SCRATCH_REG(2), 1);
 OUT_RING(ring, submit->seqno);





 OUT_PKT7(ring, CP_EVENT_WRITE, 4);
 OUT_RING(ring, CACHE_FLUSH_TS | (1 << 31));
 OUT_RING(ring, lower_32_bits(rbmemptr(ring, fence)));
 OUT_RING(ring, upper_32_bits(rbmemptr(ring, fence)));
 OUT_RING(ring, submit->seqno);


 OUT_PKT7(ring, CP_CONTEXT_SWITCH_YIELD, 4);





 OUT_RING(ring, 0x00);
 OUT_RING(ring, 0x00);

 OUT_RING(ring, 0x01);

 OUT_RING(ring, 0x01);

 a5xx_flush(gpu, ring);


 a5xx_preempt_trigger(gpu);
}
