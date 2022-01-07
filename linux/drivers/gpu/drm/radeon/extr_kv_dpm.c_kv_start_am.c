
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DYNAMIC_PM_EN ;
 int RESET_BUSY_CNT ;
 int RESET_SCLK_CNT ;
 int RREG32_SMC (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void kv_start_am(struct radeon_device *rdev)
{
 u32 sclk_pwrmgt_cntl = RREG32_SMC(SCLK_PWRMGT_CNTL);

 sclk_pwrmgt_cntl &= ~(RESET_SCLK_CNT | RESET_BUSY_CNT);
 sclk_pwrmgt_cntl |= DYNAMIC_PM_EN;

 WREG32_SMC(SCLK_PWRMGT_CNTL, sclk_pwrmgt_cntl);
}
