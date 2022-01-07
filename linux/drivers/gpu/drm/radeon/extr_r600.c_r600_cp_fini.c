
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int rptr_save_reg; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int r600_cp_stop (struct radeon_device*) ;
 int radeon_ring_fini (struct radeon_device*,struct radeon_ring*) ;
 int radeon_scratch_free (struct radeon_device*,int ) ;

void r600_cp_fini(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 r600_cp_stop(rdev);
 radeon_ring_fini(rdev, ring);
 radeon_scratch_free(rdev, ring->rptr_save_reg);
}
