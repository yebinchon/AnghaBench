
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CK_DISABLE ;
 int RREG32_SMC (int ) ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int WREG32_SMC (int ,int ) ;

void si_start_smc_clock(struct radeon_device *rdev)
{
 u32 tmp = RREG32_SMC(SMC_SYSCON_CLOCK_CNTL_0);

 tmp &= ~CK_DISABLE;

 WREG32_SMC(SMC_SYSCON_CLOCK_CNTL_0, tmp);
}
