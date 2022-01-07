
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int gpu_addr; } ;


 int VCE_CMD_END ;
 int VCE_CMD_FENCE ;
 int VCE_CMD_TRAP ;
 int cpu_to_le32 (int ) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int upper_32_bits (int ) ;

void radeon_vce_fence_emit(struct radeon_device *rdev,
      struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 uint64_t addr = rdev->fence_drv[fence->ring].gpu_addr;

 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_FENCE));
 radeon_ring_write(ring, cpu_to_le32(addr));
 radeon_ring_write(ring, cpu_to_le32(upper_32_bits(addr)));
 radeon_ring_write(ring, cpu_to_le32(fence->seq));
 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_TRAP));
 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_END));
}
