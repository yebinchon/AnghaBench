
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {scalar_t__ idx; int wptr; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ CAYMAN_RING_TYPE_CP1_INDEX ;
 int CP_RB0_WPTR ;
 int CP_RB1_WPTR ;
 int CP_RB2_WPTR ;
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void cayman_gfx_set_wptr(struct radeon_device *rdev,
    struct radeon_ring *ring)
{
 if (ring->idx == RADEON_RING_TYPE_GFX_INDEX) {
  WREG32(CP_RB0_WPTR, ring->wptr);
  (void)RREG32(CP_RB0_WPTR);
 } else if (ring->idx == CAYMAN_RING_TYPE_CP1_INDEX) {
  WREG32(CP_RB1_WPTR, ring->wptr);
  (void)RREG32(CP_RB1_WPTR);
 } else {
  WREG32(CP_RB2_WPTR, ring->wptr);
  (void)RREG32(CP_RB2_WPTR);
 }
}
