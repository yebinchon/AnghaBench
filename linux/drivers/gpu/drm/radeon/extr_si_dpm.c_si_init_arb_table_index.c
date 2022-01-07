
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_power_info {int sram_end; int arb_table_start; } ;
struct radeon_device {int dummy; } ;


 int MC_CG_ARB_FREQ_F1 ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_read_smc_sram_dword (struct radeon_device*,int ,int*,int ) ;
 int si_write_smc_sram_dword (struct radeon_device*,int ,int,int ) ;

__attribute__((used)) static int si_init_arb_table_index(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 u32 tmp;
 int ret;

 ret = si_read_smc_sram_dword(rdev, si_pi->arb_table_start, &tmp, si_pi->sram_end);
 if (ret)
  return ret;

 tmp &= 0x00FFFFFF;
 tmp |= MC_CG_ARB_FREQ_F1 << 24;

 return si_write_smc_sram_dword(rdev, si_pi->arb_table_start, tmp, si_pi->sram_end);
}
