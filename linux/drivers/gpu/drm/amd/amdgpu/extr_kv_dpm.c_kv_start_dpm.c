
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int GENERAL_PWRMGT__GLOBAL_PWRMGT_EN_MASK ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int ) ;
 int amdgpu_kv_smc_dpm_enable (struct amdgpu_device*,int) ;
 int ixGENERAL_PWRMGT ;

__attribute__((used)) static void kv_start_dpm(struct amdgpu_device *adev)
{
 u32 tmp = RREG32_SMC(ixGENERAL_PWRMGT);

 tmp |= GENERAL_PWRMGT__GLOBAL_PWRMGT_EN_MASK;
 WREG32_SMC(ixGENERAL_PWRMGT, tmp);

 amdgpu_kv_smc_dpm_enable(adev, 1);
}
