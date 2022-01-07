
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int gpu_addr; } ;


 int CACHE_FLUSH_AND_INV_TS_EVENT ;
 int DATA_SEL (int) ;
 int EOP_TCL1_ACTION_EN ;
 int EOP_TC_ACTION_EN ;
 int EVENT_INDEX (int) ;
 int EVENT_TYPE (int ) ;
 int INT_SEL (int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_EVENT_WRITE_EOP ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void cik_fence_gfx_ring_emit(struct radeon_device *rdev,
        struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 u64 addr = rdev->fence_drv[fence->ring].gpu_addr;




 radeon_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE_EOP, 4));
 radeon_ring_write(ring, (EOP_TCL1_ACTION_EN |
     EOP_TC_ACTION_EN |
     EVENT_TYPE(CACHE_FLUSH_AND_INV_TS_EVENT) |
     EVENT_INDEX(5)));
 radeon_ring_write(ring, addr & 0xfffffffc);
 radeon_ring_write(ring, (upper_32_bits(addr) & 0xffff) |
    DATA_SEL(1) | INT_SEL(0));
 radeon_ring_write(ring, fence->seq - 1);
 radeon_ring_write(ring, 0);


 radeon_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE_EOP, 4));
 radeon_ring_write(ring, (EOP_TCL1_ACTION_EN |
     EOP_TC_ACTION_EN |
     EVENT_TYPE(CACHE_FLUSH_AND_INV_TS_EVENT) |
     EVENT_INDEX(5)));
 radeon_ring_write(ring, addr & 0xfffffffc);
 radeon_ring_write(ring, (upper_32_bits(addr) & 0xffff) | DATA_SEL(1) | INT_SEL(2));
 radeon_ring_write(ring, fence->seq);
 radeon_ring_write(ring, 0);
}
