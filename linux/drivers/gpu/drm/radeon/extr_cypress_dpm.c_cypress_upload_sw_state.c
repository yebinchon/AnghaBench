
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct rv7xx_power_info {int sram_end; scalar_t__ state_table_start; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ RV770_SMC_SWSTATE ;


 int RV770_SMC_STATETABLE ;
 int cypress_convert_power_state_to_smc (struct radeon_device*,struct radeon_ps*,TYPE_1__*) ;
 int driverState ;
 scalar_t__ offsetof (int ,int ) ;
 int rv770_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

int cypress_upload_sw_state(struct radeon_device *rdev,
       struct radeon_ps *radeon_new_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u16 address = pi->state_table_start +
  offsetof(RV770_SMC_STATETABLE, driverState);
 RV770_SMC_SWSTATE state = { 0 };
 int ret;

 ret = cypress_convert_power_state_to_smc(rdev, radeon_new_state, &state);
 if (ret)
  return ret;

 return rv770_copy_bytes_to_smc(rdev, address, (u8 *)&state,
        sizeof(RV770_SMC_SWSTATE),
        pi->sram_end);
}
