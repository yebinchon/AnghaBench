
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_power_info {int sram_end; int arb_table_start; } ;
struct amdgpu_device {int dummy; } ;


 int MC_CG_ARB_FREQ_F1 ;
 int amdgpu_si_read_smc_sram_dword (struct amdgpu_device*,int ,int*,int ) ;
 int amdgpu_si_write_smc_sram_dword (struct amdgpu_device*,int ,int,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_init_arb_table_index(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 u32 tmp;
 int ret;

 ret = amdgpu_si_read_smc_sram_dword(adev, si_pi->arb_table_start,
         &tmp, si_pi->sram_end);
 if (ret)
  return ret;

 tmp &= 0x00FFFFFF;
 tmp |= MC_CG_ARB_FREQ_F1 << 24;

 return amdgpu_si_write_smc_sram_dword(adev, si_pi->arb_table_start,
           tmp, si_pi->sram_end);
}
