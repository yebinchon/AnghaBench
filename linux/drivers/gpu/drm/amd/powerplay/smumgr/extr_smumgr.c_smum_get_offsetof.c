
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* get_offsetof ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

uint32_t smum_get_offsetof(struct pp_hwmgr *hwmgr, uint32_t type, uint32_t member)
{
 if (((void*)0) != hwmgr->smumgr_funcs->get_offsetof)
  return hwmgr->smumgr_funcs->get_offsetof(type, member);

 return 0;
}
