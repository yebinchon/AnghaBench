
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int ) ;
 int kv_smc_dpm_enable (struct radeon_device*,int) ;

__attribute__((used)) static void kv_start_dpm(struct radeon_device *rdev)
{
 u32 tmp = RREG32_SMC(GENERAL_PWRMGT);

 tmp |= GLOBAL_PWRMGT_EN;
 WREG32_SMC(GENERAL_PWRMGT, tmp);

 kv_smc_dpm_enable(rdev, 1);
}
