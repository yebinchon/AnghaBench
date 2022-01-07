
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_power_info {int sram_end; } ;
struct radeon_device {int dummy; } ;
struct ni_power_info {int arb_table_start; } ;


 scalar_t__ MC_CG_ARB_FREQ_F1 ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_read_smc_sram_dword (struct radeon_device*,int ,int*,int ) ;
 int rv770_write_smc_sram_dword (struct radeon_device*,int ,int,int ) ;

__attribute__((used)) static int ni_init_arb_table_index(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 u32 tmp;
 int ret;

 ret = rv770_read_smc_sram_dword(rdev, ni_pi->arb_table_start,
     &tmp, pi->sram_end);
 if (ret)
  return ret;

 tmp &= 0x00FFFFFF;
 tmp |= ((u32)MC_CG_ARB_FREQ_F1) << 24;

 return rv770_write_smc_sram_dword(rdev, ni_pi->arb_table_start,
       tmp, pi->sram_end);
}
