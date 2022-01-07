
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


 int DMA_PACKET (int ,int ,int ,int ) ;
 int DMA_PACKET_FENCE ;
 int DMA_PACKET_TRAP ;
 int lower_32_bits (int ) ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void r600_dma_fence_ring_emit(struct radeon_device *rdev,
         struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 u64 addr = rdev->fence_drv[fence->ring].gpu_addr;


 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_FENCE, 0, 0, 0));
 radeon_ring_write(ring, addr & 0xfffffffc);
 radeon_ring_write(ring, (upper_32_bits(addr) & 0xff));
 radeon_ring_write(ring, lower_32_bits(fence->seq));

 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_TRAP, 0, 0, 0));
}
