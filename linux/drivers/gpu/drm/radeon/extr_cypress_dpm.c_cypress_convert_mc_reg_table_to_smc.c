
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_ps {int high; int medium; int low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ SMC_Evergreen_MCRegisters ;


 int cypress_convert_mc_reg_table_entry_to_smc (struct radeon_device*,int *,int *) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void cypress_convert_mc_reg_table_to_smc(struct radeon_device *rdev,
      struct radeon_ps *radeon_state,
      SMC_Evergreen_MCRegisters *mc_reg_table)
{
 struct rv7xx_ps *state = rv770_get_ps(radeon_state);

 cypress_convert_mc_reg_table_entry_to_smc(rdev,
        &state->low,
        &mc_reg_table->data[2]);
 cypress_convert_mc_reg_table_entry_to_smc(rdev,
        &state->medium,
        &mc_reg_table->data[3]);
 cypress_convert_mc_reg_table_entry_to_smc(rdev,
        &state->high,
        &mc_reg_table->data[4]);
}
