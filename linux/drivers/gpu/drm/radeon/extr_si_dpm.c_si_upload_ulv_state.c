
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ vddc; } ;
struct si_ulv_param {TYPE_1__ pl; scalar_t__ supported; } ;
struct TYPE_4__ {int ULVState; } ;
struct si_power_info {int state_table_start; int sram_end; TYPE_2__ smc_statetable; struct si_ulv_param ulv; } ;
struct radeon_device {int dummy; } ;
typedef int SISLANDS_SMC_SWSTATE ;


 int SISLANDS_SMC_STATETABLE ;
 int ULVState ;
 int memset (int *,int ,int) ;
 int offsetof (int ,int ) ;
 int si_copy_bytes_to_smc (struct radeon_device*,int,int *,int,int ) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_populate_ulv_state (struct radeon_device*,int *) ;

__attribute__((used)) static int si_upload_ulv_state(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 struct si_ulv_param *ulv = &si_pi->ulv;
 int ret = 0;

 if (ulv->supported && ulv->pl.vddc) {
  u32 address = si_pi->state_table_start +
   offsetof(SISLANDS_SMC_STATETABLE, ULVState);
  SISLANDS_SMC_SWSTATE *smc_state = &si_pi->smc_statetable.ULVState;
  u32 state_size = sizeof(SISLANDS_SMC_SWSTATE);

  memset(smc_state, 0, state_size);

  ret = si_populate_ulv_state(rdev, smc_state);
  if (!ret)
   ret = si_copy_bytes_to_smc(rdev, address, (u8 *)smc_state,
         state_size, si_pi->sram_end);
 }

 return ret;
}
