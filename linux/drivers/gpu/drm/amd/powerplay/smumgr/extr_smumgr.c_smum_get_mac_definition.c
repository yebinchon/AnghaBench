
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* get_mac_definition ) (int ) ;} ;


 int stub1 (int ) ;

uint32_t smum_get_mac_definition(struct pp_hwmgr *hwmgr, uint32_t value)
{
 if (((void*)0) != hwmgr->smumgr_funcs->get_mac_definition)
  return hwmgr->smumgr_funcs->get_mac_definition(value);

 return 0;
}
