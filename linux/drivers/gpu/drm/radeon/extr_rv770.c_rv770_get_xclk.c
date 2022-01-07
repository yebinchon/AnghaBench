
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;


 int CG_CLKPIN_CNTL ;
 int MUX_TCLK_TO_XCLK ;
 int RREG32 (int ) ;
 int TCLK ;
 int XTALIN_DIVIDE ;

u32 rv770_get_xclk(struct radeon_device *rdev)
{
 u32 reference_clock = rdev->clock.spll.reference_freq;
 u32 tmp = RREG32(CG_CLKPIN_CNTL);

 if (tmp & MUX_TCLK_TO_XCLK)
  return TCLK;

 if (tmp & XTALIN_DIVIDE)
  return reference_clock / 4;

 return reference_clock;
}
