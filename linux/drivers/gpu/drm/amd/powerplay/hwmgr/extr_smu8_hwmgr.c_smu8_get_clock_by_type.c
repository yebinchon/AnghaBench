
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* display_clock; int* nbp_memory_clock; } ;
struct smu8_hwmgr {TYPE_3__ sys_info; } ;
struct TYPE_4__ {struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_clock_voltage_dependency_table {TYPE_2__* entries; } ;
struct amd_pp_clocks {int count; int* clock; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;
struct TYPE_5__ {int clk; } ;


 int SMU8_NUM_NBPMEMORYCLOCK ;



 int smu8_get_max_sclk_level (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_get_clock_by_type(struct pp_hwmgr *hwmgr, enum amd_pp_clock_type type,
      struct amd_pp_clocks *clocks)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 int i;
 struct phm_clock_voltage_dependency_table *table;

 clocks->count = smu8_get_max_sclk_level(hwmgr);
 switch (type) {
 case 130:
  for (i = 0; i < clocks->count; i++)
   clocks->clock[i] = data->sys_info.display_clock[i] * 10;
  break;
 case 128:
  table = hwmgr->dyn_state.vddc_dependency_on_sclk;
  for (i = 0; i < clocks->count; i++)
   clocks->clock[i] = table->entries[i].clk * 10;
  break;
 case 129:
  clocks->count = SMU8_NUM_NBPMEMORYCLOCK;
  for (i = 0; i < clocks->count; i++)
   clocks->clock[i] = data->sys_info.nbp_memory_clock[clocks->count - 1 - i] * 10;
  break;
 default:
  return -1;
 }

 return 0;
}
