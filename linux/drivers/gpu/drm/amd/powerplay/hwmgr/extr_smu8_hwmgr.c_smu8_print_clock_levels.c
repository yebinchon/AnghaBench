
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* nbp_memory_clock; } ;
struct smu8_hwmgr {TYPE_3__ sys_info; } ;
struct TYPE_4__ {struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {int device; TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_clock_voltage_dependency_table {int count; TYPE_2__* entries; } ;
typedef enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;
struct TYPE_5__ {int clk; } ;


 int CGS_IND_REG__SMC ;
 int CURR_MCLK_INDEX ;
 int CURR_SCLK_INDEX ;
 int PHM_GET_FIELD (int ,int ,int ) ;


 int SMU8_NUM_NBPMEMORYCLOCK ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int ixTARGET_AND_CURRENT_PROFILE_INDEX ;
 int sprintf (char*,char*,int,int,char*) ;

__attribute__((used)) static int smu8_print_clock_levels(struct pp_hwmgr *hwmgr,
  enum pp_clock_type type, char *buf)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 struct phm_clock_voltage_dependency_table *sclk_table =
   hwmgr->dyn_state.vddc_dependency_on_sclk;
 int i, now, size = 0;

 switch (type) {
 case 128:
  now = PHM_GET_FIELD(cgs_read_ind_register(hwmgr->device,
    CGS_IND_REG__SMC,
    ixTARGET_AND_CURRENT_PROFILE_INDEX),
    TARGET_AND_CURRENT_PROFILE_INDEX,
    CURR_SCLK_INDEX);

  for (i = 0; i < sclk_table->count; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
     i, sclk_table->entries[i].clk / 100,
     (i == now) ? "*" : "");
  break;
 case 129:
  now = PHM_GET_FIELD(cgs_read_ind_register(hwmgr->device,
    CGS_IND_REG__SMC,
    ixTARGET_AND_CURRENT_PROFILE_INDEX),
    TARGET_AND_CURRENT_PROFILE_INDEX,
    CURR_MCLK_INDEX);

  for (i = SMU8_NUM_NBPMEMORYCLOCK; i > 0; i--)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
     SMU8_NUM_NBPMEMORYCLOCK-i, data->sys_info.nbp_memory_clock[i-1] / 100,
     (SMU8_NUM_NBPMEMORYCLOCK-i == now) ? "*" : "");
  break;
 default:
  break;
 }
 return size;
}
