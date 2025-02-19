
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_10__ {size_t count; int mask_low; TYPE_3__* entries; } ;
struct smu7_hwmgr {scalar_t__ mvdd_control; TYPE_4__ mvdd_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_8__ {TYPE_1__* Pattern; } ;
struct TYPE_11__ {size_t MvddLevelCount; int SmioMask2; int * Smio; TYPE_2__ SmioTable2; } ;
struct TYPE_9__ {int value; int smio_low; } ;
struct TYPE_7__ {scalar_t__ Smio; int Voltage; } ;
typedef TYPE_5__ SMU72_Discrete_DpmTable ;


 int CONVERT_FROM_HOST_TO_SMC_UL (size_t) ;
 int PP_HOST_TO_SMC_US (int) ;
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_GPIO ;
 int VOLTAGE_SCALE ;

__attribute__((used)) static int tonga_populate_smc_mvdd_table(struct pp_hwmgr *hwmgr,
   SMU72_Discrete_DpmTable *table)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t count;

 if (SMU7_VOLTAGE_CONTROL_BY_GPIO == data->mvdd_control) {
  table->MvddLevelCount = data->mvdd_voltage_table.count;
  for (count = 0; count < table->MvddLevelCount; count++) {
   table->SmioTable2.Pattern[count].Voltage =
    PP_HOST_TO_SMC_US(data->mvdd_voltage_table.entries[count].value * VOLTAGE_SCALE);

   table->SmioTable2.Pattern[count].Smio =
    (uint8_t) count;
   table->Smio[count] |=
    data->mvdd_voltage_table.entries[count].smio_low;
  }
  table->SmioMask2 = data->mvdd_voltage_table.mask_low;

  CONVERT_FROM_HOST_TO_SMC_UL(table->MvddLevelCount);
 }

 return 0;
}
