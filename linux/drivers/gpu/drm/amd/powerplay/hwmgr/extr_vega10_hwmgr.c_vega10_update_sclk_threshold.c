
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int LowGfxclkInterruptThreshold; } ;
struct TYPE_4__ {TYPE_1__ pp_table; } ;
struct vega10_hwmgr {scalar_t__ low_sclk_interrupt_threshold; TYPE_2__ smc_state_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;


 int PHM_PlatformCaps_SclkThrottleLowNotification ;
 int PPSMC_MSG_SetLowGfxclkInterruptThreshold ;
 scalar_t__ PP_CAP (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int vega10_update_sclk_threshold(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 uint32_t low_sclk_interrupt_threshold = 0;

 if (PP_CAP(PHM_PlatformCaps_SclkThrottleLowNotification) &&
  (data->low_sclk_interrupt_threshold != 0)) {
  low_sclk_interrupt_threshold =
    data->low_sclk_interrupt_threshold;

  data->smc_state_table.pp_table.LowGfxclkInterruptThreshold =
    cpu_to_le32(low_sclk_interrupt_threshold);


  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetLowGfxclkInterruptThreshold,
    (uint32_t)low_sclk_interrupt_threshold);
 }

 return 0;
}
