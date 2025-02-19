
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rv7xx_ps {int low; } ;
struct rv7xx_power_info {int sram_end; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {int valid_flag; int last; int * mc_reg_table_entry; } ;
struct evergreen_power_info {int mc_reg_table_start; TYPE_1__ mc_reg_table; } ;
struct TYPE_6__ {int * data; int member_0; } ;
typedef TYPE_2__ SMC_Evergreen_MCRegisters ;


 int RV770_SMC_SOFT_REGISTER_seq_index ;
 int cypress_convert_mc_reg_table_entry_to_smc (struct radeon_device*,int *,int *) ;
 int cypress_convert_mc_reg_table_to_smc (struct radeon_device*,struct radeon_ps*,TYPE_2__*) ;
 int cypress_convert_mc_registers (int *,int *,int ,int ) ;
 int cypress_populate_mc_reg_addresses (struct radeon_device*,TYPE_2__*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;
 int rv770_write_smc_soft_register (struct radeon_device*,int ,int) ;

int cypress_populate_mc_reg_table(struct radeon_device *rdev,
      struct radeon_ps *radeon_boot_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct rv7xx_ps *boot_state = rv770_get_ps(radeon_boot_state);
 SMC_Evergreen_MCRegisters mc_reg_table = { 0 };

 rv770_write_smc_soft_register(rdev,
          RV770_SMC_SOFT_REGISTER_seq_index, 1);

 cypress_populate_mc_reg_addresses(rdev, &mc_reg_table);

 cypress_convert_mc_reg_table_entry_to_smc(rdev,
        &boot_state->low,
        &mc_reg_table.data[0]);

 cypress_convert_mc_registers(&eg_pi->mc_reg_table.mc_reg_table_entry[0],
         &mc_reg_table.data[1], eg_pi->mc_reg_table.last,
         eg_pi->mc_reg_table.valid_flag);

 cypress_convert_mc_reg_table_to_smc(rdev, radeon_boot_state, &mc_reg_table);

 return rv770_copy_bytes_to_smc(rdev, eg_pi->mc_reg_table_start,
           (u8 *)&mc_reg_table, sizeof(SMC_Evergreen_MCRegisters),
           pi->sram_end);
}
