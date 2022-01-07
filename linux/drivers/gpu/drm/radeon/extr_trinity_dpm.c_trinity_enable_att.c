
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32_SMC (int ) ;
 int SCLK_TT_EN (int) ;
 int SCLK_TT_EN_MASK ;
 int SMU_SCLK_DPM_TT_CNTL ;
 int WREG32_SMC (int ,int ) ;

__attribute__((used)) static void trinity_enable_att(struct radeon_device *rdev)
{
 u32 value = RREG32_SMC(SMU_SCLK_DPM_TT_CNTL);

 value &= ~SCLK_TT_EN_MASK;
 value |= SCLK_TT_EN(1);
 WREG32_SMC(SMU_SCLK_DPM_TT_CNTL, value);
}
