
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cac_leakage_table; int max_clock_voltage_on_dc; int max_clock_voltage_on_ac; int vddc_phase_shed_limits_table; int acp_clock_voltage_dependency_table; int samu_clock_voltage_dependency_table; int uvd_clock_voltage_dependency_table; int vce_clock_voltage_dependency_table; int vddci_dependency_on_mclk; int vddc_dep_on_dal_pwrl; int vddc_dependency_on_mclk; int vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; } ;


 int EINVAL ;
 int smu7_patch_acp_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_cac_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_limits_vddc (struct pp_hwmgr*,int *) ;
 int smu7_patch_samu_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_uvd_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_vce_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_vddc (struct pp_hwmgr*,int ) ;
 int smu7_patch_vddc_shed_limit (struct pp_hwmgr*,int ) ;
 int smu7_patch_vddci (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_patch_dependency_tables_with_leakage(struct pp_hwmgr *hwmgr)
{
 int tmp;

 tmp = smu7_patch_vddc(hwmgr, hwmgr->dyn_state.vddc_dependency_on_sclk);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_vddc(hwmgr, hwmgr->dyn_state.vddc_dependency_on_mclk);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_vddc(hwmgr, hwmgr->dyn_state.vddc_dep_on_dal_pwrl);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_vddci(hwmgr, hwmgr->dyn_state.vddci_dependency_on_mclk);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_vce_vddc(hwmgr, hwmgr->dyn_state.vce_clock_voltage_dependency_table);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_uvd_vddc(hwmgr, hwmgr->dyn_state.uvd_clock_voltage_dependency_table);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_samu_vddc(hwmgr, hwmgr->dyn_state.samu_clock_voltage_dependency_table);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_acp_vddc(hwmgr, hwmgr->dyn_state.acp_clock_voltage_dependency_table);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_vddc_shed_limit(hwmgr, hwmgr->dyn_state.vddc_phase_shed_limits_table);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_limits_vddc(hwmgr, &hwmgr->dyn_state.max_clock_voltage_on_ac);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_limits_vddc(hwmgr, &hwmgr->dyn_state.max_clock_voltage_on_dc);
 if (tmp)
  return -EINVAL;

 tmp = smu7_patch_cac_vddc(hwmgr, hwmgr->dyn_state.cac_leakage_table);
 if (tmp)
  return -EINVAL;

 return 0;
}
