
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct amdgpu_device {int flags; TYPE_2__ clock; } ;


 int AMD_IS_APU ;
 int CG_CLKPIN_CNTL ;
 int CG_CLKPIN_CNTL_2 ;
 int MUX_TCLK_TO_XCLK ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int RREG32_SMC (int ) ;
 int XTALIN_DIVIDE ;
 int ixCG_CLKPIN_CNTL ;
 int ixCG_CLKPIN_CNTL_2 ;

__attribute__((used)) static u32 vi_get_xclk(struct amdgpu_device *adev)
{
 u32 reference_clock = adev->clock.spll.reference_freq;
 u32 tmp;

 if (adev->flags & AMD_IS_APU)
  return reference_clock;

 tmp = RREG32_SMC(ixCG_CLKPIN_CNTL_2);
 if (REG_GET_FIELD(tmp, CG_CLKPIN_CNTL_2, MUX_TCLK_TO_XCLK))
  return 1000;

 tmp = RREG32_SMC(ixCG_CLKPIN_CNTL);
 if (REG_GET_FIELD(tmp, CG_CLKPIN_CNTL, XTALIN_DIVIDE))
  return reference_clock / 4;

 return reference_clock;
}
