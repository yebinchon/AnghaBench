
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* update_sclk_threshold ) (struct pp_hwmgr*) ;} ;


 int stub1 (struct pp_hwmgr*) ;

int smum_update_sclk_threshold(struct pp_hwmgr *hwmgr)
{

 if (((void*)0) != hwmgr->smumgr_funcs->update_sclk_threshold)
  return hwmgr->smumgr_funcs->update_sclk_threshold(hwmgr);

 return 0;
}
