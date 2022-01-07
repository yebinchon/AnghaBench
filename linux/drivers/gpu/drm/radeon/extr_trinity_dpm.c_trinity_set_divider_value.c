
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_div; } ;


 int CLK_DIVIDER (int ) ;
 int CLK_DIVIDER_MASK ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int PD_SCLK_DIVIDER (int ) ;
 int PD_SCLK_DIVIDER_MASK ;
 int RREG32_SMC (int) ;
 int SMU_SCLK_DPM_STATE_0_CNTL_0 ;
 int SMU_SCLK_DPM_STATE_0_PG_CNTL ;
 int TRINITY_SIZEOF_DPM_STATE_TABLE ;
 int WREG32_SMC (int,int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int,int,struct atom_clock_dividers*) ;

__attribute__((used)) static void trinity_set_divider_value(struct radeon_device *rdev,
          u32 index, u32 sclk)
{
 struct atom_clock_dividers dividers;
 int ret;
 u32 value;
 u32 ix = index * TRINITY_SIZEOF_DPM_STATE_TABLE;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          sclk, 0, &dividers);
 if (ret)
  return;

 value = RREG32_SMC(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix);
 value &= ~CLK_DIVIDER_MASK;
 value |= CLK_DIVIDER(dividers.post_div);
 WREG32_SMC(SMU_SCLK_DPM_STATE_0_CNTL_0 + ix, value);

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          sclk/2, 0, &dividers);
 if (ret)
  return;

 value = RREG32_SMC(SMU_SCLK_DPM_STATE_0_PG_CNTL + ix);
 value &= ~PD_SCLK_DIVIDER_MASK;
 value |= PD_SCLK_DIVIDER(dividers.post_div);
 WREG32_SMC(SMU_SCLK_DPM_STATE_0_PG_CNTL + ix, value);
}
