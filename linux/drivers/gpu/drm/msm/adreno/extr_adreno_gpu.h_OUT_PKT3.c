
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct msm_ringbuffer {int dummy; } ;


 int CP_TYPE3_PKT ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int adreno_wait_ring (struct msm_ringbuffer*,int) ;

__attribute__((used)) static inline void
OUT_PKT3(struct msm_ringbuffer *ring, uint8_t opcode, uint16_t cnt)
{
 adreno_wait_ring(ring, cnt+1);
 OUT_RING(ring, CP_TYPE3_PKT | ((cnt-1) << 16) | ((opcode & 0xFF) << 8));
}
