
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int frame_time_x2; } ;
struct pp_hwmgr {int feature_mask; scalar_t__ chip_id; scalar_t__ backend; } ;
typedef int PPSMC_Msg ;


 scalar_t__ CHIP_VEGAM ;
 int EINVAL ;
 scalar_t__ PPSMC_HasDisplay ;
 scalar_t__ PPSMC_MSG_SetVBITimeout ;
 scalar_t__ PPSMC_MSG_SetVBITimeout_VEGAM ;
 int PP_VBI_TIME_SUPPORT_MASK ;
 scalar_t__ smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_notify_smc_display(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (hwmgr->feature_mask & PP_VBI_TIME_SUPPORT_MASK) {
  if (hwmgr->chip_id == CHIP_VEGAM)
   smum_send_msg_to_smc_with_parameter(hwmgr,
     (PPSMC_Msg)PPSMC_MSG_SetVBITimeout_VEGAM, data->frame_time_x2);
  else
   smum_send_msg_to_smc_with_parameter(hwmgr,
     (PPSMC_Msg)PPSMC_MSG_SetVBITimeout, data->frame_time_x2);
 }
 return (smum_send_msg_to_smc(hwmgr, (PPSMC_Msg)PPSMC_HasDisplay) == 0) ? 0 : -EINVAL;
}
