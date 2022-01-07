
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_si_program_jump_on_start (struct amdgpu_device*) ;
 int amdgpu_si_smc_clock (struct amdgpu_device*,int) ;
 int amdgpu_si_start_smc (struct amdgpu_device*) ;

__attribute__((used)) static void si_dpm_start_smc(struct amdgpu_device *adev)
{
 amdgpu_si_program_jump_on_start(adev);
 amdgpu_si_start_smc(adev);
 amdgpu_si_smc_clock(adev, 1);
}
