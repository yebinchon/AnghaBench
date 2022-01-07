
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_table_context {TYPE_1__* driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct TYPE_2__ {scalar_t__ FanTargetTemperature; } ;
typedef TYPE_1__ PPTable_t ;


 int SMU_MSG_SetFanTemperatureTarget ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;

__attribute__((used)) static int vega20_set_thermal_fan_table(struct smu_context *smu)
{
 int ret;
 struct smu_table_context *table_context = &smu->smu_table;
 PPTable_t *pptable = table_context->driver_pptable;

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetFanTemperatureTarget,
   (uint32_t)pptable->FanTargetTemperature);

 return ret;
}
