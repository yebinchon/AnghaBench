
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_ringbuffer {int dummy; } ;


 int CP_TYPE2_PKT ;
 int OUT_RING (struct msm_ringbuffer*,int ) ;
 int adreno_wait_ring (struct msm_ringbuffer*,int) ;

__attribute__((used)) static inline void
OUT_PKT2(struct msm_ringbuffer *ring)
{
 adreno_wait_ring(ring, 1);
 OUT_RING(ring, CP_TYPE2_PKT);
}
