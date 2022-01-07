
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega20_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct pp_display_clock_request {int clock_type; int clock_freq_in_khz; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
struct TYPE_2__ {scalar_t__ enabled; } ;
typedef int PPCLK_e ;


 int EINVAL ;
 size_t GNLD_DPM_DCEFCLK ;
 int PPCLK_DCEFCLK ;
 int PPCLK_DISPCLK ;
 int PPCLK_PHYCLK ;
 int PPCLK_PIXCLK ;
 int PPSMC_MSG_SetHardMinByFreq ;




 int pr_info (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

int vega20_display_clock_voltage_request(struct pp_hwmgr *hwmgr,
  struct pp_display_clock_request *clock_req)
{
 int result = 0;
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
 enum amd_pp_clock_type clk_type = clock_req->clock_type;
 uint32_t clk_freq = clock_req->clock_freq_in_khz / 1000;
 PPCLK_e clk_select = 0;
 uint32_t clk_request = 0;

 if (data->smu_features[GNLD_DPM_DCEFCLK].enabled) {
  switch (clk_type) {
  case 131:
   clk_select = PPCLK_DCEFCLK;
   break;
  case 130:
   clk_select = PPCLK_DISPCLK;
   break;
  case 128:
   clk_select = PPCLK_PIXCLK;
   break;
  case 129:
   clk_select = PPCLK_PHYCLK;
   break;
  default:
   pr_info("[DisplayClockVoltageRequest]Invalid Clock Type!");
   result = -EINVAL;
   break;
  }

  if (!result) {
   clk_request = (clk_select << 16) | clk_freq;
   result = smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetHardMinByFreq,
     clk_request);
  }
 }

 return result;
}
