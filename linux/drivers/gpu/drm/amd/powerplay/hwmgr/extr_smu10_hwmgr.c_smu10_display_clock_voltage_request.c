
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct smu10_hwmgr {void* dcf_actual_hard_min_freq; void* f_actual_hard_min_freq; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct pp_display_clock_request {int clock_type; int clock_freq_in_khz; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
typedef int PPSMC_Msg ;


 int EINVAL ;
 int PPSMC_MSG_SetHardMinDcefclkByFreq ;
 int PPSMC_MSG_SetHardMinFclkByFreq ;
 int PPSMC_MSG_SetHardMinSocclkByFreq ;



 int pr_info (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,void*) ;

__attribute__((used)) static int smu10_display_clock_voltage_request(struct pp_hwmgr *hwmgr,
  struct pp_display_clock_request *clock_req)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);
 enum amd_pp_clock_type clk_type = clock_req->clock_type;
 uint32_t clk_freq = clock_req->clock_freq_in_khz / 1000;
 PPSMC_Msg msg;

 switch (clk_type) {
 case 130:
  if (clk_freq == smu10_data->dcf_actual_hard_min_freq)
   return 0;
  msg = PPSMC_MSG_SetHardMinDcefclkByFreq;
  smu10_data->dcf_actual_hard_min_freq = clk_freq;
  break;
 case 128:
   msg = PPSMC_MSG_SetHardMinSocclkByFreq;
  break;
 case 129:
  if (clk_freq == smu10_data->f_actual_hard_min_freq)
   return 0;
  smu10_data->f_actual_hard_min_freq = clk_freq;
  msg = PPSMC_MSG_SetHardMinFclkByFreq;
  break;
 default:
  pr_info("[DisplayClockVoltageRequest]Invalid Clock Type!");
  return -EINVAL;
 }
 smum_send_msg_to_smc_with_parameter(hwmgr, msg, clk_freq);

 return 0;
}
