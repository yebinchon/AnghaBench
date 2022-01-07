
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {scalar_t__ seqno; TYPE_1__* memptrs; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; } ;
struct TYPE_2__ {scalar_t__ fence; } ;



__attribute__((used)) static inline bool msm_gpu_active(struct msm_gpu *gpu)
{
 int i;

 for (i = 0; i < gpu->nr_rings; i++) {
  struct msm_ringbuffer *ring = gpu->rb[i];

  if (ring->seqno > ring->memptrs->fence)
   return 1;
 }

 return 0;
}
