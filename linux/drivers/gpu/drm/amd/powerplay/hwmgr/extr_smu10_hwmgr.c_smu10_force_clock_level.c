
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu10_voltage_dependency_table {TYPE_2__* entries; int count; } ;
struct TYPE_3__ {struct smu10_voltage_dependency_table* vdd_dep_on_fclk; } ;
struct smu10_hwmgr {int gfx_max_freq_limit; int gfx_min_freq_limit; TYPE_1__ clock_vol_info; } ;
struct pp_hwmgr {struct smu10_hwmgr* backend; } ;
typedef enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;
struct TYPE_4__ {int clk; } ;


 int EINVAL ;
 int PPSMC_MSG_SetHardMinFclkByFreq ;
 int PPSMC_MSG_SetHardMinGfxClk ;
 int PPSMC_MSG_SetSoftMaxFclkByFreq ;
 int PPSMC_MSG_SetSoftMaxGfxClk ;



 int SMU10_UMD_PSTATE_GFXCLK ;
 int ffs (int) ;
 int fls (int) ;
 int pr_info (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu10_force_clock_level(struct pp_hwmgr *hwmgr,
  enum pp_clock_type type, uint32_t mask)
{
 struct smu10_hwmgr *data = hwmgr->backend;
 struct smu10_voltage_dependency_table *mclk_table =
     data->clock_vol_info.vdd_dep_on_fclk;
 uint32_t low, high;

 low = mask ? (ffs(mask) - 1) : 0;
 high = mask ? (fls(mask) - 1) : 0;

 switch (type) {
 case 128:
  if (low > 2 || high > 2) {
   pr_info("Currently sclk only support 3 levels on RV\n");
   return -EINVAL;
  }

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      low == 2 ? data->gfx_max_freq_limit/100 :
      low == 1 ? SMU10_UMD_PSTATE_GFXCLK :
      data->gfx_min_freq_limit/100);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      high == 0 ? data->gfx_min_freq_limit/100 :
      high == 1 ? SMU10_UMD_PSTATE_GFXCLK :
      data->gfx_max_freq_limit/100);
  break;

 case 130:
  if (low > mclk_table->count - 1 || high > mclk_table->count - 1)
   return -EINVAL;

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      mclk_table->entries[low].clk/100);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      mclk_table->entries[high].clk/100);
  break;

 case 129:
 default:
  break;
 }
 return 0;
}
