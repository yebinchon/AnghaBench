
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct msm_ringbuffer {int dummy; } ;


 int CP_TYPE0_PKT ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int adreno_wait_ring (struct msm_ringbuffer*,int) ;

__attribute__((used)) static inline void
OUT_PKT0(struct msm_ringbuffer *ring, uint16_t regindx, uint16_t cnt)
{
 adreno_wait_ring(ring, cnt+1);
 OUT_RING(ring, CP_TYPE0_PKT | ((cnt-1) << 16) | (regindx & 0x7FFF));
}
