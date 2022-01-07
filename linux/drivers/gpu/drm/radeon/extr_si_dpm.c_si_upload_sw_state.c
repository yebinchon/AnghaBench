
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int driverState; } ;
struct si_power_info {int state_table_start; int sram_end; TYPE_1__ smc_statetable; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; } ;
typedef int SISLANDS_SMC_SWSTATE ;
typedef int SISLANDS_SMC_HW_PERFORMANCE_LEVEL ;


 int SISLANDS_SMC_STATETABLE ;
 int driverState ;
 int memset (int *,int ,int) ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 int offsetof (int ,int ) ;
 int si_convert_power_state_to_smc (struct radeon_device*,struct radeon_ps*,int *) ;
 int si_copy_bytes_to_smc (struct radeon_device*,int,int *,int,int ) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static int si_upload_sw_state(struct radeon_device *rdev,
         struct radeon_ps *radeon_new_state)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 struct ni_ps *new_state = ni_get_ps(radeon_new_state);
 int ret;
 u32 address = si_pi->state_table_start +
  offsetof(SISLANDS_SMC_STATETABLE, driverState);
 u32 state_size = sizeof(SISLANDS_SMC_SWSTATE) +
  ((new_state->performance_level_count - 1) *
   sizeof(SISLANDS_SMC_HW_PERFORMANCE_LEVEL));
 SISLANDS_SMC_SWSTATE *smc_state = &si_pi->smc_statetable.driverState;

 memset(smc_state, 0, state_size);

 ret = si_convert_power_state_to_smc(rdev, radeon_new_state, smc_state);
 if (ret)
  return ret;

 ret = si_copy_bytes_to_smc(rdev, address, (u8 *)smc_state,
       state_size, si_pi->sram_end);

 return ret;
}
