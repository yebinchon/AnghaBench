
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {int flags; TYPE_2__ clock; } ;


 int CG_CLKPIN_CNTL ;
 int GENERAL_PWRMGT ;
 int GPU_COUNTER_CLK ;
 int RADEON_IS_IGP ;
 int RREG32_SMC (int ) ;
 int XTALIN_DIVIDE ;

u32 cik_get_xclk(struct radeon_device *rdev)
{
 u32 reference_clock = rdev->clock.spll.reference_freq;

 if (rdev->flags & RADEON_IS_IGP) {
  if (RREG32_SMC(GENERAL_PWRMGT) & GPU_COUNTER_CLK)
   return reference_clock / 2;
 } else {
  if (RREG32_SMC(CG_CLKPIN_CNTL) & XTALIN_DIVIDE)
   return reference_clock / 4;
 }
 return reference_clock;
}
