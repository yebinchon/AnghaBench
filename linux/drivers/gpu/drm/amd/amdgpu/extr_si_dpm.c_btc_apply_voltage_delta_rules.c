
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct evergreen_power_info {int vddc_voltage_table; int vddci_voltage_table; } ;
struct TYPE_4__ {scalar_t__ vddc_vddci_delta; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 scalar_t__ btc_find_voltage (int *,scalar_t__) ;
 struct evergreen_power_info* evergreen_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void btc_apply_voltage_delta_rules(struct amdgpu_device *adev,
       u16 max_vddc, u16 max_vddci,
       u16 *vddc, u16 *vddci)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(adev);
 u16 new_voltage;

 if ((0 == *vddc) || (0 == *vddci))
  return;

 if (*vddc > *vddci) {
  if ((*vddc - *vddci) > adev->pm.dpm.dyn_state.vddc_vddci_delta) {
   new_voltage = btc_find_voltage(&eg_pi->vddci_voltage_table,
             (*vddc - adev->pm.dpm.dyn_state.vddc_vddci_delta));
   *vddci = (new_voltage < max_vddci) ? new_voltage : max_vddci;
  }
 } else {
  if ((*vddci - *vddc) > adev->pm.dpm.dyn_state.vddc_vddci_delta) {
   new_voltage = btc_find_voltage(&eg_pi->vddc_voltage_table,
             (*vddci - adev->pm.dpm.dyn_state.vddc_vddci_delta));
   *vddc = (new_voltage < max_vddc) ? new_voltage : max_vddc;
  }
 }
}
