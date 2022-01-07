
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct si_power_info {int sram_end; scalar_t__ soft_regs_start; } ;
struct amdgpu_device {int dummy; } ;


 int amdgpu_si_write_smc_sram_dword (struct amdgpu_device*,scalar_t__,int ,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_write_smc_soft_register(struct amdgpu_device *adev,
          u16 reg_offset, u32 value)
{
 struct si_power_info *si_pi = si_get_pi(adev);

 return amdgpu_si_write_smc_sram_dword(adev,
           si_pi->soft_regs_start + reg_offset,
           value, si_pi->sram_end);
}
