
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ready; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 size_t R600_RING_TYPE_UVD_INDEX ;
 int uvd_v1_0_stop (struct radeon_device*) ;

void uvd_v1_0_fini(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];

 uvd_v1_0_stop(rdev);
 ring->ready = 0;
}
