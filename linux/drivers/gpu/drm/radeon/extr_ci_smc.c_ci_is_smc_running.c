
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CK_DISABLE ;
 int RREG32_SMC (int ) ;
 int SMC_PC_C ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;

bool ci_is_smc_running(struct radeon_device *rdev)
{
 u32 clk = RREG32_SMC(SMC_SYSCON_CLOCK_CNTL_0);
 u32 pc_c = RREG32_SMC(SMC_PC_C);

 if (!(clk & CK_DISABLE) && (0x20100 <= pc_c))
  return 1;

 return 0;
}
