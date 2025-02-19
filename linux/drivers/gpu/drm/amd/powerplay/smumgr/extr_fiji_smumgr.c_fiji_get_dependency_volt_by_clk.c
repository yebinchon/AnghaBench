
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_3__ {size_t vddci_bootup_value; size_t mvdd_bootup_value; } ;
struct smu7_hwmgr {scalar_t__ vddci_control; scalar_t__ mvdd_control; TYPE_1__ vbios_boot_state; int vddci_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct phm_ppt_v1_clock_voltage_dependency_table {scalar_t__ count; TYPE_2__* entries; } ;
struct TYPE_4__ {size_t clk; size_t vddc; int vddci; scalar_t__ mvdd; } ;


 int EINVAL ;
 int PHASES_SHIFT ;
 scalar_t__ SMU7_VOLTAGE_CONTROL_NONE ;
 size_t VDDCI_SHIFT ;
 size_t VDDC_SHIFT ;
 scalar_t__ VDDC_VDDCI_DELTA ;
 size_t VOLTAGE_SCALE ;
 size_t phm_find_closest_vddci (int *,scalar_t__) ;

__attribute__((used)) static int fiji_get_dependency_volt_by_clk(struct pp_hwmgr *hwmgr,
  struct phm_ppt_v1_clock_voltage_dependency_table *dep_table,
  uint32_t clock, uint32_t *voltage, uint32_t *mvdd)
{
 uint32_t i;
 uint16_t vddci;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 *voltage = *mvdd = 0;



 if (dep_table->count == 0)
  return -EINVAL;

 for (i = 0; i < dep_table->count; i++) {

  if (dep_table->entries[i].clk >= clock) {
   *voltage |= (dep_table->entries[i].vddc *
     VOLTAGE_SCALE) << VDDC_SHIFT;
   if (SMU7_VOLTAGE_CONTROL_NONE == data->vddci_control)
    *voltage |= (data->vbios_boot_state.vddci_bootup_value *
      VOLTAGE_SCALE) << VDDCI_SHIFT;
   else if (dep_table->entries[i].vddci)
    *voltage |= (dep_table->entries[i].vddci *
      VOLTAGE_SCALE) << VDDCI_SHIFT;
   else {
    vddci = phm_find_closest_vddci(&(data->vddci_voltage_table),
      (dep_table->entries[i].vddc -
        VDDC_VDDCI_DELTA));
    *voltage |= (vddci * VOLTAGE_SCALE) << VDDCI_SHIFT;
   }

   if (SMU7_VOLTAGE_CONTROL_NONE == data->mvdd_control)
    *mvdd = data->vbios_boot_state.mvdd_bootup_value *
     VOLTAGE_SCALE;
   else if (dep_table->entries[i].mvdd)
    *mvdd = (uint32_t) dep_table->entries[i].mvdd *
     VOLTAGE_SCALE;

   *voltage |= 1 << PHASES_SHIFT;
   return 0;
  }
 }


 *voltage |= (dep_table->entries[i - 1].vddc * VOLTAGE_SCALE) << VDDC_SHIFT;

 if (SMU7_VOLTAGE_CONTROL_NONE == data->vddci_control)
  *voltage |= (data->vbios_boot_state.vddci_bootup_value *
    VOLTAGE_SCALE) << VDDCI_SHIFT;
 else if (dep_table->entries[i-1].vddci) {
  vddci = phm_find_closest_vddci(&(data->vddci_voltage_table),
    (dep_table->entries[i].vddc -
      VDDC_VDDCI_DELTA));
  *voltage |= (vddci * VOLTAGE_SCALE) << VDDCI_SHIFT;
 }

 if (SMU7_VOLTAGE_CONTROL_NONE == data->mvdd_control)
  *mvdd = data->vbios_boot_state.mvdd_bootup_value * VOLTAGE_SCALE;
 else if (dep_table->entries[i].mvdd)
  *mvdd = (uint32_t) dep_table->entries[i - 1].mvdd * VOLTAGE_SCALE;

 return 0;
}
