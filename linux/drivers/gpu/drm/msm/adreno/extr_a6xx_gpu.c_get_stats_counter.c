
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_ringbuffer {int dummy; } ;


 int CP_REG_TO_MEM ;
 int OUT_PKT7 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void get_stats_counter(struct msm_ringbuffer *ring, u32 counter,
  u64 iova)
{
 OUT_PKT7(ring, CP_REG_TO_MEM, 3);
 OUT_RING(ring, counter | (1 << 30) | (2 << 18));
 OUT_RING(ring, lower_32_bits(iova));
 OUT_RING(ring, upper_32_bits(iova));
}
