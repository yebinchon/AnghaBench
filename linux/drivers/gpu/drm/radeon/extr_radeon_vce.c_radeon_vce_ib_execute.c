
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_ib {size_t ring; int length_dw; int gpu_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int VCE_CMD_IB ;
 int cpu_to_le32 (int ) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int upper_32_bits (int ) ;

void radeon_vce_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];
 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_IB));
 radeon_ring_write(ring, cpu_to_le32(ib->gpu_addr));
 radeon_ring_write(ring, cpu_to_le32(upper_32_bits(ib->gpu_addr)));
 radeon_ring_write(ring, cpu_to_le32(ib->length_dw));
}
