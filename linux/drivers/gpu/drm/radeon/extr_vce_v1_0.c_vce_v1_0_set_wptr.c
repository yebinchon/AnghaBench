
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {scalar_t__ idx; int wptr; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ TN_RING_TYPE_VCE1_INDEX ;
 int VCE_RB_WPTR ;
 int VCE_RB_WPTR2 ;
 int WREG32 (int ,int ) ;

void vce_v1_0_set_wptr(struct radeon_device *rdev,
         struct radeon_ring *ring)
{
 if (ring->idx == TN_RING_TYPE_VCE1_INDEX)
  WREG32(VCE_RB_WPTR, ring->wptr);
 else
  WREG32(VCE_RB_WPTR2, ring->wptr);
}
