
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* smc_table_manager ) (struct pp_hwmgr*,int *,int ,int) ;} ;


 int EINVAL ;
 int stub1 (struct pp_hwmgr*,int *,int ,int) ;

int smum_smc_table_manager(struct pp_hwmgr *hwmgr, uint8_t *table, uint16_t table_id, bool rw)
{
 if (hwmgr->smumgr_funcs->smc_table_manager)
  return hwmgr->smumgr_funcs->smc_table_manager(hwmgr, table, table_id, rw);

 return -EINVAL;
}
