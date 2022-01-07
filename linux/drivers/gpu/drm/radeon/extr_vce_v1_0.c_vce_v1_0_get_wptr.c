
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 scalar_t__ TN_RING_TYPE_VCE1_INDEX ;
 int VCE_RB_WPTR ;
 int VCE_RB_WPTR2 ;

uint32_t vce_v1_0_get_wptr(struct radeon_device *rdev,
      struct radeon_ring *ring)
{
 if (ring->idx == TN_RING_TYPE_VCE1_INDEX)
  return RREG32(VCE_RB_WPTR);
 else
  return RREG32(VCE_RB_WPTR2);
}
