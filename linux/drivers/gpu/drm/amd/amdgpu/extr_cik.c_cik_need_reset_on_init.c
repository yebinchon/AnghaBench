
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 scalar_t__ REG_GET_FIELD (int,int ,int ) ;
 int RREG32_SMC (int ) ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int ck_disable ;
 int ixSMC_PC_C ;
 int ixSMC_SYSCON_CLOCK_CNTL_0 ;

__attribute__((used)) static bool cik_need_reset_on_init(struct amdgpu_device *adev)
{
 u32 clock_cntl, pc;

 if (adev->flags & AMD_IS_APU)
  return 0;


 clock_cntl = RREG32_SMC(ixSMC_SYSCON_CLOCK_CNTL_0);
 pc = RREG32_SMC(ixSMC_PC_C);
 if ((0 == REG_GET_FIELD(clock_cntl, SMC_SYSCON_CLOCK_CNTL_0, ck_disable)) &&
     (0x20100 <= pc))
  return 1;

 return 0;
}
