
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_power_info {int sram_end; int arb_table_start; } ;
struct amdgpu_device {int dummy; } ;


 int MC_CG_ARB_FREQ_F0 ;
 int amdgpu_si_read_smc_sram_dword (struct amdgpu_device*,int ,int*,int ) ;
 int ni_copy_and_switch_arb_sets (struct amdgpu_device*,int,int) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_force_switch_to_arb_f0(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 u32 tmp;
 int ret;

 ret = amdgpu_si_read_smc_sram_dword(adev, si_pi->arb_table_start,
         &tmp, si_pi->sram_end);
 if (ret)
  return ret;

 tmp = (tmp >> 24) & 0xff;

 if (tmp == MC_CG_ARB_FREQ_F0)
  return 0;

 return ni_copy_and_switch_arb_sets(adev, tmp, MC_CG_ARB_FREQ_F0);
}
