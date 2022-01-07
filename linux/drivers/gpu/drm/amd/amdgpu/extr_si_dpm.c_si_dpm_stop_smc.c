
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_si_reset_smc (struct amdgpu_device*) ;
 int amdgpu_si_smc_clock (struct amdgpu_device*,int) ;

__attribute__((used)) static void si_dpm_stop_smc(struct amdgpu_device *adev)
{
 amdgpu_si_reset_smc(adev);
 amdgpu_si_smc_clock(adev, 0);
}
