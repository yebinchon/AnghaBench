
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int entries; } ;
struct TYPE_16__ {int entries; } ;
struct TYPE_15__ {int entries; } ;
struct TYPE_14__ {int entries; } ;
struct TYPE_26__ {int entries; } ;
struct TYPE_25__ {int entries; } ;
struct TYPE_24__ {int entries; } ;
struct TYPE_23__ {int entries; } ;
struct TYPE_22__ {int entries; } ;
struct TYPE_21__ {int entries; } ;
struct TYPE_20__ {int entries; } ;
struct amdgpu_dpm_dynamic_state {TYPE_13__ vddgfx_dependency_on_sclk; TYPE_12__ acp_clock_voltage_dependency_table; TYPE_11__ samu_clock_voltage_dependency_table; TYPE_10__ uvd_clock_voltage_dependency_table; TYPE_9__ vce_clock_voltage_dependency_table; int cac_tdp_table; int ppm_table; TYPE_8__ phase_shedding_limits_table; TYPE_7__ cac_leakage_table; TYPE_6__ mvdd_dependency_on_mclk; TYPE_5__ vddc_dependency_on_mclk; TYPE_4__ vddci_dependency_on_mclk; TYPE_3__ vddc_dependency_on_sclk; } ;
struct TYPE_18__ {struct amdgpu_dpm_dynamic_state dyn_state; } ;
struct TYPE_19__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int kfree (int ) ;

void amdgpu_free_extended_power_table(struct amdgpu_device *adev)
{
 struct amdgpu_dpm_dynamic_state *dyn_state = &adev->pm.dpm.dyn_state;

 kfree(dyn_state->vddc_dependency_on_sclk.entries);
 kfree(dyn_state->vddci_dependency_on_mclk.entries);
 kfree(dyn_state->vddc_dependency_on_mclk.entries);
 kfree(dyn_state->mvdd_dependency_on_mclk.entries);
 kfree(dyn_state->cac_leakage_table.entries);
 kfree(dyn_state->phase_shedding_limits_table.entries);
 kfree(dyn_state->ppm_table);
 kfree(dyn_state->cac_tdp_table);
 kfree(dyn_state->vce_clock_voltage_dependency_table.entries);
 kfree(dyn_state->uvd_clock_voltage_dependency_table.entries);
 kfree(dyn_state->samu_clock_voltage_dependency_table.entries);
 kfree(dyn_state->acp_clock_voltage_dependency_table.entries);
 kfree(dyn_state->vddgfx_dependency_on_sclk.entries);
}
