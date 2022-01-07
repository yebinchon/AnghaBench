
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu10_hwmgr {scalar_t__ dcf_actual_hard_min_freq; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_SetHardMinDcefclkByFreq ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int smu10_set_hard_min_dcefclk_by_freq(struct pp_hwmgr *hwmgr, uint32_t clock)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (smu10_data->dcf_actual_hard_min_freq &&
  smu10_data->dcf_actual_hard_min_freq != clock) {
  smu10_data->dcf_actual_hard_min_freq = clock;
  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetHardMinDcefclkByFreq,
     smu10_data->dcf_actual_hard_min_freq);
 }
 return 0;
}
