
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int sram_end; int arb_table_start; } ;


 int MC_CG_ARB_FREQ_F1 ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_read_smc_sram_dword (struct radeon_device*,int ,int*,int ) ;
 int ci_write_smc_sram_dword (struct radeon_device*,int ,int,int ) ;

__attribute__((used)) static int ci_init_arb_table_index(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 tmp;
 int ret;

 ret = ci_read_smc_sram_dword(rdev, pi->arb_table_start,
         &tmp, pi->sram_end);
 if (ret)
  return ret;

 tmp &= 0x00FFFFFF;
 tmp |= MC_CG_ARB_FREQ_F1 << 24;

 return ci_write_smc_sram_dword(rdev, pi->arb_table_start,
           tmp, pi->sram_end);
}
