
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smu7_hwmgr {scalar_t__ voltage_control; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_3__ {int SVI2Enable; } ;
typedef TYPE_1__ SMU7_Discrete_DpmTable ;


 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_SVID2 ;

__attribute__((used)) static int ci_populate_smc_svi2_config(struct pp_hwmgr *hwmgr,
         SMU7_Discrete_DpmTable *table)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->voltage_control)
  table->SVI2Enable = 1;
 else
  table->SVI2Enable = 0;
 return 0;
}
