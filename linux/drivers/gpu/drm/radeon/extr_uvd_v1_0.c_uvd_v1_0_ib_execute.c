
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_ib {size_t ring; int length_dw; int gpu_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int PACKET0 (int ,int ) ;
 int UVD_RBC_IB_BASE ;
 int UVD_RBC_IB_SIZE ;
 int radeon_ring_write (struct radeon_ring*,int ) ;

void uvd_v1_0_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];

 radeon_ring_write(ring, PACKET0(UVD_RBC_IB_BASE, 0));
 radeon_ring_write(ring, ib->gpu_addr);
 radeon_ring_write(ring, PACKET0(UVD_RBC_IB_SIZE, 0));
 radeon_ring_write(ring, ib->length_dw);
}
