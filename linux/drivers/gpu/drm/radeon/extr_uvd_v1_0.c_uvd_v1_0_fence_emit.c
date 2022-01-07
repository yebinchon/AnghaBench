
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


 int PACKET0 (int ,int ) ;
 int UVD_GPCOM_VCPU_CMD ;
 int UVD_GPCOM_VCPU_DATA0 ;
 int UVD_GPCOM_VCPU_DATA1 ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void uvd_v1_0_fence_emit(struct radeon_device *rdev,
    struct radeon_fence *fence)
{
 struct radeon_ring *ring = &rdev->ring[fence->ring];
 uint64_t addr = rdev->fence_drv[fence->ring].gpu_addr;

 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_DATA0, 0));
 radeon_ring_write(ring, addr & 0xffffffff);
 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_DATA1, 0));
 radeon_ring_write(ring, fence->seq);
 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_CMD, 0));
 radeon_ring_write(ring, 0);

 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_DATA0, 0));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_DATA1, 0));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, PACKET0(UVD_GPCOM_VCPU_CMD, 0));
 radeon_ring_write(ring, 2);
 return;
}
