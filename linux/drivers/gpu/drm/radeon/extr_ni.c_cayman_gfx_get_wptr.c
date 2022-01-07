
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ CAYMAN_RING_TYPE_CP1_INDEX ;
 int CP_RB0_WPTR ;
 int CP_RB1_WPTR ;
 int CP_RB2_WPTR ;
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;

u32 cayman_gfx_get_wptr(struct radeon_device *rdev,
   struct radeon_ring *ring)
{
 u32 wptr;

 if (ring->idx == RADEON_RING_TYPE_GFX_INDEX)
  wptr = RREG32(CP_RB0_WPTR);
 else if (ring->idx == CAYMAN_RING_TYPE_CP1_INDEX)
  wptr = RREG32(CP_RB1_WPTR);
 else
  wptr = RREG32(CP_RB2_WPTR);

 return wptr;
}
