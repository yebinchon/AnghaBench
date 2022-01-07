
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* smu_fini ) (struct pp_hwmgr*) ;} ;


 int stub1 (struct pp_hwmgr*) ;

int hwmgr_sw_fini(struct pp_hwmgr *hwmgr)
{
 if (hwmgr && hwmgr->smumgr_funcs && hwmgr->smumgr_funcs->smu_fini)
  hwmgr->smumgr_funcs->smu_fini(hwmgr);

 return 0;
}
