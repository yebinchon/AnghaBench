
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct smu7_hwmgr {int vddci_voltage_table; } ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ backend; } ;
struct phm_ppt_v1_information {int vddc_lookup_table; int vddgfx_lookup_table; } ;
struct TYPE_7__ {scalar_t__ count; TYPE_1__* entries; } ;
typedef TYPE_2__ phm_ppt_v1_clock_voltage_dependency_table ;
struct TYPE_8__ {int Phases; void* Vddci; void* Vddc; void* VddGfx; } ;
struct TYPE_6__ {size_t clk; scalar_t__ mvdd; scalar_t__ vddci; scalar_t__ vddc; scalar_t__ vddgfx; } ;
typedef TYPE_3__ SMU_VoltageLevel ;


 int EINVAL ;
 scalar_t__ VDDC_VDDCI_DELTA ;
 void* phm_get_voltage_id (int *,scalar_t__) ;
 void* phm_get_voltage_index (int ,scalar_t__) ;

__attribute__((used)) static int tonga_get_dependency_volt_by_clk(struct pp_hwmgr *hwmgr,
 phm_ppt_v1_clock_voltage_dependency_table *allowed_clock_voltage_table,
 uint32_t clock, SMU_VoltageLevel *voltage, uint32_t *mvdd)
{
 uint32_t i = 0;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct phm_ppt_v1_information *pptable_info =
      (struct phm_ppt_v1_information *)(hwmgr->pptable);


 if (allowed_clock_voltage_table->count == 0)
  return -EINVAL;

 for (i = 0; i < allowed_clock_voltage_table->count; i++) {

  if (allowed_clock_voltage_table->entries[i].clk >= clock) {
   voltage->VddGfx = phm_get_voltage_index(
     pptable_info->vddgfx_lookup_table,
    allowed_clock_voltage_table->entries[i].vddgfx);
   voltage->Vddc = phm_get_voltage_index(
      pptable_info->vddc_lookup_table,
      allowed_clock_voltage_table->entries[i].vddc);

   if (allowed_clock_voltage_table->entries[i].vddci)
    voltage->Vddci =
     phm_get_voltage_id(&data->vddci_voltage_table, allowed_clock_voltage_table->entries[i].vddci);
   else
    voltage->Vddci =
     phm_get_voltage_id(&data->vddci_voltage_table,
      allowed_clock_voltage_table->entries[i].vddc - VDDC_VDDCI_DELTA);


   if (allowed_clock_voltage_table->entries[i].mvdd)
    *mvdd = (uint32_t) allowed_clock_voltage_table->entries[i].mvdd;

   voltage->Phases = 1;
   return 0;
  }
 }


 voltage->VddGfx = phm_get_voltage_index(pptable_info->vddgfx_lookup_table,
  allowed_clock_voltage_table->entries[i-1].vddgfx);
 voltage->Vddc = phm_get_voltage_index(pptable_info->vddc_lookup_table,
  allowed_clock_voltage_table->entries[i-1].vddc);

 if (allowed_clock_voltage_table->entries[i-1].vddci)
  voltage->Vddci = phm_get_voltage_id(&data->vddci_voltage_table,
   allowed_clock_voltage_table->entries[i-1].vddci);

 if (allowed_clock_voltage_table->entries[i-1].mvdd)
  *mvdd = (uint32_t) allowed_clock_voltage_table->entries[i-1].mvdd;

 return 0;
}
