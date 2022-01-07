
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int wptr; } ;
struct radeon_device {int dummy; } ;


 int UVD_RBC_RB_WPTR ;
 int WREG32 (int ,int ) ;

void uvd_v1_0_set_wptr(struct radeon_device *rdev,
         struct radeon_ring *ring)
{
 WREG32(UVD_RBC_RB_WPTR, ring->wptr);
}
