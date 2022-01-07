
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int wptr; } ;
struct radeon_device {int dummy; } ;


 int CP_RB0_WPTR ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void cik_gfx_set_wptr(struct radeon_device *rdev,
        struct radeon_ring *ring)
{
 WREG32(CP_RB0_WPTR, ring->wptr);
 (void)RREG32(CP_RB0_WPTR);
}
