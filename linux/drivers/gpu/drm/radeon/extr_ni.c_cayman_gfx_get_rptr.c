
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_offs; scalar_t__ idx; } ;
struct TYPE_2__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;


 scalar_t__ CAYMAN_RING_TYPE_CP1_INDEX ;
 int CP_RB0_RPTR ;
 int CP_RB1_RPTR ;
 int CP_RB2_RPTR ;
 scalar_t__ RADEON_RING_TYPE_GFX_INDEX ;
 int RREG32 (int ) ;

u32 cayman_gfx_get_rptr(struct radeon_device *rdev,
   struct radeon_ring *ring)
{
 u32 rptr;

 if (rdev->wb.enabled)
  rptr = rdev->wb.wb[ring->rptr_offs/4];
 else {
  if (ring->idx == RADEON_RING_TYPE_GFX_INDEX)
   rptr = RREG32(CP_RB0_RPTR);
  else if (ring->idx == CAYMAN_RING_TYPE_CP1_INDEX)
   rptr = RREG32(CP_RB1_RPTR);
  else
   rptr = RREG32(CP_RB2_RPTR);
 }

 return rptr;
}
