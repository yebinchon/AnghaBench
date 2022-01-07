
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32_SMC (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int SCLK_PWRMGT_OFF ;
 int WREG32_SMC (int ,int ) ;

__attribute__((used)) static void ci_enable_sclk_control(struct radeon_device *rdev, bool enable)
{
 u32 tmp = RREG32_SMC(SCLK_PWRMGT_CNTL);

 if (enable)
  tmp &= ~SCLK_PWRMGT_OFF;
 else
  tmp |= SCLK_PWRMGT_OFF;
 WREG32_SMC(SCLK_PWRMGT_CNTL, tmp);
}
