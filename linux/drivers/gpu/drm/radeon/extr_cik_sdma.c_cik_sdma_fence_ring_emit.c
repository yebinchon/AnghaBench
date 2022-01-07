
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


 int SDMA_OPCODE_FENCE ;
 int SDMA_OPCODE_TRAP ;
 int SDMA_PACKET (int ,int ,int ) ;
 int cik_sdma_hdp_flush_ring_emit (struct radeon_device*,size_t) ;
 int lower_32_bits (int ) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int upper_32_bits (int ) ;

void cik_sdma_fence_ring_emit(struct radeon_device *rdev,
         struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 u64 addr = rdev->fence_drv[fence->ring].gpu_addr;


 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_FENCE, 0, 0));
 radeon_ring_write(ring, lower_32_bits(addr));
 radeon_ring_write(ring, upper_32_bits(addr));
 radeon_ring_write(ring, fence->seq);

 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_TRAP, 0, 0));

 cik_sdma_hdp_flush_ring_emit(rdev, fence->ring);
}
