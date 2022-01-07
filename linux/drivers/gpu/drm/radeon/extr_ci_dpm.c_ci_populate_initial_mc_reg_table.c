
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int sram_end; int smc_mc_reg_table; int mc_reg_table_start; } ;
typedef int SMU7_Discrete_MCRegisters ;


 int ci_convert_mc_reg_table_to_smc (struct radeon_device*,int *) ;
 int ci_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_populate_mc_reg_addresses (struct radeon_device*,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ci_populate_initial_mc_reg_table(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 int ret;

 memset(&pi->smc_mc_reg_table, 0, sizeof(SMU7_Discrete_MCRegisters));

 ret = ci_populate_mc_reg_addresses(rdev, &pi->smc_mc_reg_table);
 if (ret)
  return ret;
 ci_convert_mc_reg_table_to_smc(rdev, &pi->smc_mc_reg_table);

 return ci_copy_bytes_to_smc(rdev,
        pi->mc_reg_table_start,
        (u8 *)&pi->smc_mc_reg_table,
        sizeof(SMU7_Discrete_MCRegisters),
        pi->sram_end);
}
