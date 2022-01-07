
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {struct msm_ringbuffer** rb; } ;


 int CP_ME_INIT ;
 int EINVAL ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int a6xx_flush (struct msm_gpu*,struct msm_ringbuffer*) ;
 scalar_t__ a6xx_idle (struct msm_gpu*,struct msm_ringbuffer*) ;

__attribute__((used)) static int a6xx_cp_init(struct msm_gpu *gpu)
{
 struct msm_ringbuffer *ring = gpu->rb[0];

 OUT_PKT7(ring, CP_ME_INIT, 8);

 OUT_RING(ring, 0x0000002f);


 OUT_RING(ring, 0x00000003);


 OUT_RING(ring, 0x20000000);


 OUT_RING(ring, 0x00000000);
 OUT_RING(ring, 0x00000000);


 OUT_RING(ring, 0x00000000);


 OUT_RING(ring, 0x00000000);
 OUT_RING(ring, 0x00000000);

 a6xx_flush(gpu, ring);
 return a6xx_idle(gpu, ring) ? 0 : -EINVAL;
}
