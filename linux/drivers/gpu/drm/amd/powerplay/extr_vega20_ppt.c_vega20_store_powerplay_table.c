
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_table_context {int TDPODLimit; int thermal_controller_type; int driver_pptable; TYPE_2__* power_play_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct TYPE_3__ {int * ODSettingsMax; } ;
struct TYPE_4__ {TYPE_1__ OverDrive8Table; int ucThermalControllerType; int smcPPTable; } ;
typedef int PPTable_t ;
typedef TYPE_2__ ATOM_Vega20_POWERPLAYTABLE ;


 size_t ATOM_VEGA20_ODSETTING_POWERPERCENTAGE ;
 int EINVAL ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int vega20_store_powerplay_table(struct smu_context *smu)
{
 ATOM_Vega20_POWERPLAYTABLE *powerplay_table = ((void*)0);
 struct smu_table_context *table_context = &smu->smu_table;

 if (!table_context->power_play_table)
  return -EINVAL;

 powerplay_table = table_context->power_play_table;

 memcpy(table_context->driver_pptable, &powerplay_table->smcPPTable,
        sizeof(PPTable_t));

 table_context->thermal_controller_type = powerplay_table->ucThermalControllerType;
 table_context->TDPODLimit = le32_to_cpu(powerplay_table->OverDrive8Table.ODSettingsMax[ATOM_VEGA20_ODSETTING_POWERPERCENTAGE]);

 return 0;
}
