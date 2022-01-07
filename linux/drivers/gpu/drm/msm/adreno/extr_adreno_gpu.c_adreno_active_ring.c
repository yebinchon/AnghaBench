
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {struct msm_ringbuffer** rb; } ;



struct msm_ringbuffer *adreno_active_ring(struct msm_gpu *gpu)
{
 return gpu->rb[0];
}
