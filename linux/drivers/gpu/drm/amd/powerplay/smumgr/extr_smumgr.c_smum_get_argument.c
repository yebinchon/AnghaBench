
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* get_argument ) (struct pp_hwmgr*) ;} ;


 int stub1 (struct pp_hwmgr*) ;

uint32_t smum_get_argument(struct pp_hwmgr *hwmgr)
{
 if (((void*)0) != hwmgr->smumgr_funcs->get_argument)
  return hwmgr->smumgr_funcs->get_argument(hwmgr);

 return 0;
}
