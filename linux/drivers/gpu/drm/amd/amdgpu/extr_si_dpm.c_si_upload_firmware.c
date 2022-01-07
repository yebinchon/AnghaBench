
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int sram_end; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_si_load_smc_ucode (struct amdgpu_device*,int ) ;
 int amdgpu_si_reset_smc (struct amdgpu_device*) ;
 int amdgpu_si_smc_clock (struct amdgpu_device*,int) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_upload_firmware(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);

 amdgpu_si_reset_smc(adev);
 amdgpu_si_smc_clock(adev, 0);

 return amdgpu_si_load_smc_ucode(adev, si_pi->sram_end);
}
