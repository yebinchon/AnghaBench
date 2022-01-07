
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CC_SMU_TST_EFUSE1_MISC ;
 int DYN_PWR_DOWN_EN ;
 int GB_ADDR_CONFIG ;
 int RB_BACKEND_DISABLE_MASK ;
 int RREG32 (int ) ;
 int RREG32_SMC (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int SMU_SCRATCH_A ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void trinity_gfx_powergating_enable(struct radeon_device *rdev,
        bool enable)
{
 if (enable) {
  if (RREG32_SMC(CC_SMU_TST_EFUSE1_MISC) & RB_BACKEND_DISABLE_MASK)
   WREG32_SMC(SMU_SCRATCH_A, (RREG32_SMC(SMU_SCRATCH_A) | 0x01));

  WREG32_P(SCLK_PWRMGT_CNTL, DYN_PWR_DOWN_EN, ~DYN_PWR_DOWN_EN);
 } else {
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~DYN_PWR_DOWN_EN);
  RREG32(GB_ADDR_CONFIG);
 }
}
