
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct msm_ringbuffer {int dummy; } ;


 int OUT_RING (struct msm_ringbuffer*,int ) ;
 int PKT4 (scalar_t__,scalar_t__) ;
 int adreno_wait_ring (struct msm_ringbuffer*,scalar_t__) ;

__attribute__((used)) static inline void
OUT_PKT4(struct msm_ringbuffer *ring, uint16_t regindx, uint16_t cnt)
{
 adreno_wait_ring(ring, cnt + 1);
 OUT_RING(ring, PKT4(regindx, cnt));
}
