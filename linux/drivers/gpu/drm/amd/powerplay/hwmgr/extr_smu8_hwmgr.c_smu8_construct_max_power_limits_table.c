
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct smu8_sys_info {int * nbp_memory_clock; } ;
struct smu8_hwmgr {struct smu8_sys_info sys_info; } ;
struct TYPE_3__ {struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_clock_voltage_dependency_table {int count; TYPE_2__* entries; } ;
struct phm_clock_and_voltage_limits {int mclk; int vddc; int sclk; } ;
struct TYPE_4__ {scalar_t__ v; int clk; } ;


 int smu8_convert_8Bit_index_to_voltage (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu8_construct_max_power_limits_table(struct pp_hwmgr *hwmgr,
   struct phm_clock_and_voltage_limits *table)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 struct smu8_sys_info *sys_info = &data->sys_info;
 struct phm_clock_voltage_dependency_table *dep_table =
    hwmgr->dyn_state.vddc_dependency_on_sclk;

 if (dep_table->count > 0) {
  table->sclk = dep_table->entries[dep_table->count-1].clk;
  table->vddc = smu8_convert_8Bit_index_to_voltage(hwmgr,
     (uint16_t)dep_table->entries[dep_table->count-1].v);
 }
 table->mclk = sys_info->nbp_memory_clock[0];
 return 0;
}
