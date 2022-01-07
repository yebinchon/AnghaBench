
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef int PPSMC_Result ;
typedef int PPSMC_Msg ;


 int SMC_SCRATCH0 ;
 int WREG32 (int ,int ) ;
 int amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;

__attribute__((used)) static PPSMC_Result si_send_msg_to_smc_with_parameter(struct amdgpu_device *adev,
            PPSMC_Msg msg, u32 parameter)
{
 WREG32(SMC_SCRATCH0, parameter);
 return amdgpu_si_send_msg_to_smc(adev, msg);
}
