
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct sumo_sclk_voltage_mapping_table {size_t num_max_dpm_entries; TYPE_1__* entries; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_5__ {size_t ulSupportedSCLK; int usVoltageIndex; } ;
struct TYPE_4__ {size_t sclk_frequency; int vid_2bit; } ;
typedef TYPE_2__ ATOM_AVAILABLE_SCLK_LIST ;


 size_t SUMO_MAX_HARDWARE_POWERLEVELS ;

__attribute__((used)) static void sumo_construct_sclk_voltage_mapping_table(struct amdgpu_device *adev,
            struct sumo_sclk_voltage_mapping_table *sclk_voltage_mapping_table,
            ATOM_AVAILABLE_SCLK_LIST *table)
{
 u32 i;
 u32 n = 0;
 u32 prev_sclk = 0;

 for (i = 0; i < SUMO_MAX_HARDWARE_POWERLEVELS; i++) {
  if (table[i].ulSupportedSCLK > prev_sclk) {
   sclk_voltage_mapping_table->entries[n].sclk_frequency =
    table[i].ulSupportedSCLK;
   sclk_voltage_mapping_table->entries[n].vid_2bit =
    table[i].usVoltageIndex;
   prev_sclk = table[i].ulSupportedSCLK;
   n++;
  }
 }

 sclk_voltage_mapping_table->num_max_dpm_entries = n;
}
