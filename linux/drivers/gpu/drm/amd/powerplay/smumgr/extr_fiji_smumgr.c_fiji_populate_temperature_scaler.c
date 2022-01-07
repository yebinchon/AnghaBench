
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {scalar_t__ smu_backend; } ;
struct TYPE_2__ {scalar_t__* LPMLTemperatureScaler; } ;
struct fiji_smumgr {TYPE_1__ power_tune_table; } ;



__attribute__((used)) static int fiji_populate_temperature_scaler(struct pp_hwmgr *hwmgr)
{
 int i;
 struct fiji_smumgr *smu_data = (struct fiji_smumgr *)(hwmgr->smu_backend);


 for (i = 0; i < 16; i++)
  smu_data->power_tune_table.LPMLTemperatureScaler[i] = 0;

 return 0;
}
