
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int CP_RB0_WPTR ;
 int RREG32 (int ) ;

u32 cik_gfx_get_wptr(struct radeon_device *rdev,
       struct radeon_ring *ring)
{
 return RREG32(CP_RB0_WPTR);
}
