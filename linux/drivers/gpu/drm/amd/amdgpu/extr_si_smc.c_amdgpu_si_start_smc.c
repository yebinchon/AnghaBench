
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32_SMC (int ) ;
 int RST_REG ;
 int SMC_SYSCON_RESET_CNTL ;
 int WREG32_SMC (int ,int ) ;

void amdgpu_si_start_smc(struct amdgpu_device *adev)
{
 u32 tmp = RREG32_SMC(SMC_SYSCON_RESET_CNTL);

 tmp &= ~RST_REG;

 WREG32_SMC(SMC_SYSCON_RESET_CNTL, tmp);
}
