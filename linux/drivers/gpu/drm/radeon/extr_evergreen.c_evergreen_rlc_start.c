
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; } ;


 int GFX_POWER_GATING_ENABLE ;
 int GFX_POWER_GATING_SRC ;
 int RADEON_IS_IGP ;
 int RLC_CNTL ;
 int RLC_ENABLE ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void evergreen_rlc_start(struct radeon_device *rdev)
{
 u32 mask = RLC_ENABLE;

 if (rdev->flags & RADEON_IS_IGP) {
  mask |= GFX_POWER_GATING_ENABLE | GFX_POWER_GATING_SRC;
 }

 WREG32(RLC_CNTL, mask);
}
