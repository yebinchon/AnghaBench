
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CK_DISABLE ;
 int RREG32_SMC (int ) ;
 int RST_REG ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int SMC_SYSCON_RESET_CNTL ;

bool amdgpu_si_is_smc_running(struct amdgpu_device *adev)
{
 u32 rst = RREG32_SMC(SMC_SYSCON_RESET_CNTL);
 u32 clk = RREG32_SMC(SMC_SYSCON_CLOCK_CNTL_0);

 if (!(rst & RST_REG) && !(clk & CK_DISABLE))
  return 1;

 return 0;
}
