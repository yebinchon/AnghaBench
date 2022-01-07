
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct amdgpu_device {TYPE_2__ clock; } ;


 int CG_CLKPIN_CNTL ;
 int CG_CLKPIN_CNTL_2 ;
 int MUX_TCLK_TO_XCLK ;
 int RREG32 (int ) ;
 int TCLK ;
 int XTALIN_DIVIDE ;

__attribute__((used)) static u32 si_get_xclk(struct amdgpu_device *adev)
{
        u32 reference_clock = adev->clock.spll.reference_freq;
 u32 tmp;

 tmp = RREG32(CG_CLKPIN_CNTL_2);
 if (tmp & MUX_TCLK_TO_XCLK)
  return TCLK;

 tmp = RREG32(CG_CLKPIN_CNTL);
 if (tmp & XTALIN_DIVIDE)
  return reference_clock / 4;

 return reference_clock;
}
