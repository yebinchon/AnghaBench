
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_3__* funcs; TYPE_1__* dev; } ;
struct msm_gem_submit {unsigned int nr_cmds; int seqno; TYPE_2__* cmd; struct msm_ringbuffer* ring; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_6__ {int (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;
struct TYPE_5__ {int type; int size; int iova; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;


 int BIT (int) ;
 int CACHE_FLUSH_TS ;
 int CP_EVENT_WRITE ;
 int CP_INDIRECT_BUFFER_PFD ;
 int CP_INDIRECT_BUFFER_PFE ;
 int CP_INTERRUPT ;
 int CP_REG (int ) ;
 int CP_SET_CONSTANT ;
 int CP_WAIT_FOR_IDLE ;
 int HLSQ_FLUSH ;



 int OUT_PKT0 (struct msm_ringbuffer*,int ,int) ;
 int OUT_PKT2 (struct msm_ringbuffer*) ;
 int OUT_PKT3 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int REG_A3XX_HLSQ_CL_KERNEL_GROUP_X_REG ;
 int REG_AXXX_CP_SCRATCH_REG2 ;
 int adreno_is_a2xx (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a3xx (struct adreno_gpu*) ;
 int adreno_is_a430 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a4xx (struct adreno_gpu*) ;
 int fence ;
 int lower_32_bits (int ) ;
 int rbmemptr (struct msm_ringbuffer*,int ) ;
 int stub1 (struct msm_gpu*,struct msm_ringbuffer*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void adreno_submit(struct msm_gpu *gpu, struct msm_gem_submit *submit,
  struct msm_file_private *ctx)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct msm_drm_private *priv = gpu->dev->dev_private;
 struct msm_ringbuffer *ring = submit->ring;
 unsigned i;

 for (i = 0; i < submit->nr_cmds; i++) {
  switch (submit->cmd[i].type) {
  case 128:

   break;
  case 129:

   if (priv->lastctx == ctx)
    break;

  case 130:
   OUT_PKT3(ring, adreno_is_a430(adreno_gpu) ?
    CP_INDIRECT_BUFFER_PFE : CP_INDIRECT_BUFFER_PFD, 2);
   OUT_RING(ring, lower_32_bits(submit->cmd[i].iova));
   OUT_RING(ring, submit->cmd[i].size);
   OUT_PKT2(ring);
   break;
  }
 }

 OUT_PKT0(ring, REG_AXXX_CP_SCRATCH_REG2, 1);
 OUT_RING(ring, submit->seqno);

 if (adreno_is_a3xx(adreno_gpu) || adreno_is_a4xx(adreno_gpu)) {




  OUT_PKT3(ring, CP_EVENT_WRITE, 1);
  OUT_RING(ring, HLSQ_FLUSH);
 }


 OUT_PKT3(ring, CP_WAIT_FOR_IDLE, 1);
 OUT_RING(ring, 0x00000000);

 if (!adreno_is_a2xx(adreno_gpu)) {

  OUT_PKT3(ring, CP_EVENT_WRITE, 3);
  OUT_RING(ring, CACHE_FLUSH_TS | BIT(31));
  OUT_RING(ring, rbmemptr(ring, fence));
  OUT_RING(ring, submit->seqno);
 } else {

  OUT_PKT3(ring, CP_EVENT_WRITE, 3);
  OUT_RING(ring, CACHE_FLUSH_TS);
  OUT_RING(ring, rbmemptr(ring, fence));
  OUT_RING(ring, submit->seqno);
  OUT_PKT3(ring, CP_INTERRUPT, 1);
  OUT_RING(ring, 0x80000000);
 }
 gpu->funcs->flush(gpu, ring);
}
