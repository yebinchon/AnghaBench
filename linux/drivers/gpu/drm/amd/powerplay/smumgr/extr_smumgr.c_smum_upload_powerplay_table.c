
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* upload_pptable_settings ) (struct pp_hwmgr*) ;} ;


 int stub1 (struct pp_hwmgr*) ;

int smum_upload_powerplay_table(struct pp_hwmgr *hwmgr)
{
 if (((void*)0) != hwmgr->smumgr_funcs->upload_pptable_settings)
  return hwmgr->smumgr_funcs->upload_pptable_settings(hwmgr);

 return 0;
}
