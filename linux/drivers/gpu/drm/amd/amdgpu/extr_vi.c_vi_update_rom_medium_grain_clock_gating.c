
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_ROM_MGCG ;
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK ;
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;
 int ixCGTT_ROM_CLK_CTRL0 ;

__attribute__((used)) static void vi_update_rom_medium_grain_clock_gating(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t temp, data;

 temp = data = RREG32_SMC(ixCGTT_ROM_CLK_CTRL0);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_ROM_MGCG))
  data &= ~(CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK |
    CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK);
 else
  data |= CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK |
    CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE1_MASK;

 if (temp != data)
  WREG32_SMC(ixCGTT_ROM_CLK_CTRL0, data);
}
