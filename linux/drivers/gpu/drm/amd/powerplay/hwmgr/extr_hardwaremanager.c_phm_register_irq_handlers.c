
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct TYPE_2__ {int (* register_irq_handlers ) (struct pp_hwmgr*) ;} ;


 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*) ;

int phm_register_irq_handlers(struct pp_hwmgr *hwmgr)
{
 PHM_FUNC_CHECK(hwmgr);

 if (hwmgr->hwmgr_func->register_irq_handlers != ((void*)0))
  return hwmgr->hwmgr_func->register_irq_handlers(hwmgr);

 return 0;
}
