
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu10_hwmgr {scalar_t__ deep_sleep_dcefclk; scalar_t__ need_min_deep_sleep_dcefclk; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_SetMinDeepSleepDcefclk ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int smu10_set_min_deep_sleep_dcefclk(struct pp_hwmgr *hwmgr, uint32_t clock)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (smu10_data->need_min_deep_sleep_dcefclk &&
  smu10_data->deep_sleep_dcefclk != clock) {
  smu10_data->deep_sleep_dcefclk = clock;
  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetMinDeepSleepDcefclk,
     smu10_data->deep_sleep_dcefclk);
 }
 return 0;
}
