
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int count; TYPE_1__* entries; } ;
struct smu7_hwmgr {scalar_t__ voltage_control; TYPE_2__ vddc_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_7__ {unsigned int VddcLevelCount; int * VddcTable; } ;
struct TYPE_5__ {int value; } ;
typedef TYPE_3__ SMU72_Discrete_DpmTable ;


 int CONVERT_FROM_HOST_TO_SMC_UL (unsigned int) ;
 int PP_HOST_TO_SMC_US (int) ;
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_SVID2 ;
 int VOLTAGE_SCALE ;

__attribute__((used)) static int tonga_populate_smc_vddc_table(struct pp_hwmgr *hwmgr,
   SMU72_Discrete_DpmTable *table)
{
 unsigned int count;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->voltage_control) {
  table->VddcLevelCount = data->vddc_voltage_table.count;
  for (count = 0; count < table->VddcLevelCount; count++) {
   table->VddcTable[count] =
    PP_HOST_TO_SMC_US(data->vddc_voltage_table.entries[count].value * VOLTAGE_SCALE);
  }
  CONVERT_FROM_HOST_TO_SMC_UL(table->VddcLevelCount);
 }
 return 0;
}
