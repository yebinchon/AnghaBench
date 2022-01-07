
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {int (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;


 int CP_ME_INIT ;
 int EINVAL ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 scalar_t__ a5xx_idle (struct msm_gpu*,struct msm_ringbuffer*) ;
 scalar_t__ adreno_is_a530 (struct adreno_gpu*) ;
 int stub1 (struct msm_gpu*,struct msm_ringbuffer*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a5xx_me_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct msm_ringbuffer *ring = gpu->rb[0];

 OUT_PKT7(ring, CP_ME_INIT, 8);

 OUT_RING(ring, 0x0000002F);


 OUT_RING(ring, 0x00000003);


 OUT_RING(ring, 0x20000000);


 OUT_RING(ring, 0x00000000);
 OUT_RING(ring, 0x00000000);


 if (adreno_is_a530(adreno_gpu)) {




  OUT_RING(ring, 0x0000000B);
 } else {

  OUT_RING(ring, 0x00000000);
 }

 OUT_RING(ring, 0x00000000);
 OUT_RING(ring, 0x00000000);

 gpu->funcs->flush(gpu, ring);
 return a5xx_idle(gpu, ring) ? 0 : -EINVAL;
}
