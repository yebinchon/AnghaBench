
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int gpu_addr; } ;


 int CACHE_FLUSH_AND_INV_EVENT_TS ;
 int DATA_SEL (int) ;
 int EVENT_INDEX (int) ;
 int EVENT_TYPE (int ) ;
 int INT_SEL (int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_ENGINE_ME ;
 int PACKET3_EVENT_WRITE_EOP ;
 int PACKET3_FULL_CACHE_ENA ;
 int PACKET3_SH_ACTION_ENA ;
 int PACKET3_SURFACE_SYNC ;
 int PACKET3_TC_ACTION_ENA ;
 int lower_32_bits (int ) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int ) ;

void cayman_fence_ring_emit(struct radeon_device *rdev,
       struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 u64 addr = rdev->fence_drv[fence->ring].gpu_addr;
 u32 cp_coher_cntl = PACKET3_FULL_CACHE_ENA | PACKET3_TC_ACTION_ENA |
  PACKET3_SH_ACTION_ENA;


 radeon_ring_write(ring, PACKET3(PACKET3_SURFACE_SYNC, 3));
 radeon_ring_write(ring, PACKET3_ENGINE_ME | cp_coher_cntl);
 radeon_ring_write(ring, 0xFFFFFFFF);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 10);

 radeon_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE_EOP, 4));
 radeon_ring_write(ring, EVENT_TYPE(CACHE_FLUSH_AND_INV_EVENT_TS) | EVENT_INDEX(5));
 radeon_ring_write(ring, lower_32_bits(addr));
 radeon_ring_write(ring, (upper_32_bits(addr) & 0xff) | DATA_SEL(1) | INT_SEL(2));
 radeon_ring_write(ring, fence->seq);
 radeon_ring_write(ring, 0);
}
