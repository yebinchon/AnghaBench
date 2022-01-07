
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ ASIC_IS_LOMBOK (struct radeon_device*) ;
 int RV770_SMC_SOFT_REGISTER_is_asic_lombok ;
 int RV770_SMC_SOFT_REGISTER_mc_block_delay ;
 int RV770_SMC_SOFT_REGISTER_mclk_switch_lim ;
 int RV770_SMC_SOFT_REGISTER_mvdd_chg_time ;
 int radeon_get_xclk (struct radeon_device*) ;
 int rv770_program_response_times (struct radeon_device*) ;
 int rv770_write_smc_soft_register (struct radeon_device*,int ,int) ;

void cypress_program_response_times(struct radeon_device *rdev)
{
 u32 reference_clock;
 u32 mclk_switch_limit;

 reference_clock = radeon_get_xclk(rdev);
 mclk_switch_limit = (460 * reference_clock) / 100;

 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_mclk_switch_lim,
          mclk_switch_limit);

 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_mvdd_chg_time, 1);

 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_mc_block_delay, 0xAA);

 rv770_program_response_times(rdev);

 if (ASIC_IS_LOMBOK(rdev))
  rv770_write_smc_soft_register(rdev,
           RV770_SMC_SOFT_REGISTER_is_asic_lombok, 1);

}
