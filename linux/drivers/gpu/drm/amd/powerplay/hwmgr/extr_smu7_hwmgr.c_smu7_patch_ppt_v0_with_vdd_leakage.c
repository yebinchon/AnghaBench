
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct smu7_leakage_voltage {size_t count; size_t* leakage_id; size_t* actual_voltage; } ;
struct pp_hwmgr {int dummy; } ;


 size_t ATOM_VIRTUAL_VOLTAGE_ID0 ;
 int pr_err (char*) ;

__attribute__((used)) static void smu7_patch_ppt_v0_with_vdd_leakage(struct pp_hwmgr *hwmgr,
  uint32_t *voltage, struct smu7_leakage_voltage *leakage_table)
{
 uint32_t index;


 for (index = 0; index < leakage_table->count; index++) {


  if (leakage_table->leakage_id[index] == *voltage) {
   *voltage = leakage_table->actual_voltage[index];
   break;
  }
 }

 if (*voltage > ATOM_VIRTUAL_VOLTAGE_ID0)
  pr_err("Voltage value looks like a Leakage ID but it's not patched \n");
}
