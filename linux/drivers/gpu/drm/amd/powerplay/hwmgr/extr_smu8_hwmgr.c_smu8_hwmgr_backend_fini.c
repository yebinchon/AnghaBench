
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vddc_dep_on_dal_pwrl; } ;
struct pp_hwmgr {int * backend; TYPE_1__ dyn_state; } ;


 int kfree (int *) ;

__attribute__((used)) static int smu8_hwmgr_backend_fini(struct pp_hwmgr *hwmgr)
{
 if (hwmgr != ((void*)0)) {
  kfree(hwmgr->dyn_state.vddc_dep_on_dal_pwrl);
  hwmgr->dyn_state.vddc_dep_on_dal_pwrl = ((void*)0);

  kfree(hwmgr->backend);
  hwmgr->backend = ((void*)0);
 }
 return 0;
}
