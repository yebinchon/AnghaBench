
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int UVD_RBC_RB_RPTR ;

uint32_t uvd_v1_0_get_rptr(struct radeon_device *rdev,
      struct radeon_ring *ring)
{
 return RREG32(UVD_RBC_RB_RPTR);
}
