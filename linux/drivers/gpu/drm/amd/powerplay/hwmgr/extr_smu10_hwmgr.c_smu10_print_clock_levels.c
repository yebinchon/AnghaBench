
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu10_voltage_dependency_table {int count; TYPE_2__* entries; } ;
struct TYPE_3__ {struct smu10_voltage_dependency_table* vdd_dep_on_fclk; } ;
struct smu10_hwmgr {int gfx_max_freq_limit; int gfx_min_freq_limit; TYPE_1__ clock_vol_info; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;
struct TYPE_4__ {int clk; } ;


 int PPSMC_MSG_GetFclkFrequency ;
 int PPSMC_MSG_GetGfxclkFrequency ;


 int SMU10_UMD_PSTATE_GFXCLK ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static int smu10_print_clock_levels(struct pp_hwmgr *hwmgr,
  enum pp_clock_type type, char *buf)
{
 struct smu10_hwmgr *data = (struct smu10_hwmgr *)(hwmgr->backend);
 struct smu10_voltage_dependency_table *mclk_table =
   data->clock_vol_info.vdd_dep_on_fclk;
 uint32_t i, now, size = 0;

 switch (type) {
 case 128:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetGfxclkFrequency);
  now = smum_get_argument(hwmgr);


  if (now == data->gfx_max_freq_limit/100)
   i = 2;
  else if (now == data->gfx_min_freq_limit/100)
   i = 0;
  else
   i = 1;

  size += sprintf(buf + size, "0: %uMhz %s\n",
     data->gfx_min_freq_limit/100,
     i == 0 ? "*" : "");
  size += sprintf(buf + size, "1: %uMhz %s\n",
     i == 1 ? now : SMU10_UMD_PSTATE_GFXCLK,
     i == 1 ? "*" : "");
  size += sprintf(buf + size, "2: %uMhz %s\n",
     data->gfx_max_freq_limit/100,
     i == 2 ? "*" : "");
  break;
 case 129:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetFclkFrequency);
  now = smum_get_argument(hwmgr);

  for (i = 0; i < mclk_table->count; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
     i,
     mclk_table->entries[i].clk / 100,
     ((mclk_table->entries[i].clk / 100)
      == now) ? "*" : "");
  break;
 default:
  break;
 }

 return size;
}
