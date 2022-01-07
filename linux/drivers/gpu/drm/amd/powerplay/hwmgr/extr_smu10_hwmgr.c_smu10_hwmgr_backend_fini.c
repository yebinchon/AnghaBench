
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu10_clock_voltage_information {int * vdd_dep_on_phyclk; int * vdd_dep_on_dppclk; int * vdd_dep_on_dispclk; int * vdd_dep_on_fclk; int * vdd_dep_on_socclk; int * vdd_dep_on_dcefclk; } ;
struct smu10_hwmgr {struct smu10_clock_voltage_information clock_vol_info; } ;
struct TYPE_2__ {int * vddc_dep_on_dal_pwrl; } ;
struct pp_hwmgr {int * backend; TYPE_1__ dyn_state; } ;


 int kfree (int *) ;

__attribute__((used)) static int smu10_hwmgr_backend_fini(struct pp_hwmgr *hwmgr)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);
 struct smu10_clock_voltage_information *pinfo = &(smu10_data->clock_vol_info);

 kfree(pinfo->vdd_dep_on_dcefclk);
 pinfo->vdd_dep_on_dcefclk = ((void*)0);
 kfree(pinfo->vdd_dep_on_socclk);
 pinfo->vdd_dep_on_socclk = ((void*)0);
 kfree(pinfo->vdd_dep_on_fclk);
 pinfo->vdd_dep_on_fclk = ((void*)0);
 kfree(pinfo->vdd_dep_on_dispclk);
 pinfo->vdd_dep_on_dispclk = ((void*)0);
 kfree(pinfo->vdd_dep_on_dppclk);
 pinfo->vdd_dep_on_dppclk = ((void*)0);
 kfree(pinfo->vdd_dep_on_phyclk);
 pinfo->vdd_dep_on_phyclk = ((void*)0);

 kfree(hwmgr->dyn_state.vddc_dep_on_dal_pwrl);
 hwmgr->dyn_state.vddc_dep_on_dal_pwrl = ((void*)0);

 kfree(hwmgr->backend);
 hwmgr->backend = ((void*)0);

 return 0;
}
