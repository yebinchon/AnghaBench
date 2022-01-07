
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* update_smc_table ) (struct pp_hwmgr*,int ) ;} ;


 int stub1 (struct pp_hwmgr*,int ) ;

int smum_update_smc_table(struct pp_hwmgr *hwmgr, uint32_t type)
{

 if (((void*)0) != hwmgr->smumgr_funcs->update_smc_table)
  return hwmgr->smumgr_funcs->update_smc_table(hwmgr, type);

 return 0;
}
