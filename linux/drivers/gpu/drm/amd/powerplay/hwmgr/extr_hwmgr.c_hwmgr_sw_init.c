
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* smu_init ) (struct pp_hwmgr*) ;int name; } ;


 int EINVAL ;
 int phm_register_irq_handlers (struct pp_hwmgr*) ;
 int pr_info (char*,int ) ;
 int stub1 (struct pp_hwmgr*) ;

int hwmgr_sw_init(struct pp_hwmgr *hwmgr)
{
 if (!hwmgr|| !hwmgr->smumgr_funcs || !hwmgr->smumgr_funcs->smu_init)
  return -EINVAL;

 phm_register_irq_handlers(hwmgr);
 pr_info("hwmgr_sw_init smu backed is %s\n", hwmgr->smumgr_funcs->name);

 return hwmgr->smumgr_funcs->smu_init(hwmgr);
}
