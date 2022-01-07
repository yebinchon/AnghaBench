
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smu7_power_state {int dummy; } ;
struct smu7_hwmgr {scalar_t__ force_pcie_gen; int pspp_notify_required; } ;
struct pp_hwmgr {int adev; scalar_t__ backend; } ;
struct phm_set_power_state_input {int pcurrent_state; int pnew_state; } ;


 int PCIE_PERF_REQ_GEN2 ;
 int PCIE_PERF_REQ_GEN3 ;


 scalar_t__ PP_PCIEGenInvalid ;
 int amdgpu_acpi_pcie_performance_request (int ,int ,int) ;
 struct smu7_power_state* cast_const_phw_smu7_power_state (int ) ;
 int smu7_get_current_pcie_speed (struct pp_hwmgr*) ;
 int smu7_get_maximum_link_speed (struct pp_hwmgr*,struct smu7_power_state const*) ;

__attribute__((used)) static int smu7_request_link_speed_change_before_state_change(
  struct pp_hwmgr *hwmgr, const void *input)
{
 const struct phm_set_power_state_input *states =
   (const struct phm_set_power_state_input *)input;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 const struct smu7_power_state *smu7_nps =
   cast_const_phw_smu7_power_state(states->pnew_state);
 const struct smu7_power_state *polaris10_cps =
   cast_const_phw_smu7_power_state(states->pcurrent_state);

 uint16_t target_link_speed = smu7_get_maximum_link_speed(hwmgr, smu7_nps);
 uint16_t current_link_speed;

 if (data->force_pcie_gen == PP_PCIEGenInvalid)
  current_link_speed = smu7_get_maximum_link_speed(hwmgr, polaris10_cps);
 else
  current_link_speed = data->force_pcie_gen;

 data->force_pcie_gen = PP_PCIEGenInvalid;
 data->pspp_notify_required = 0;

 if (target_link_speed > current_link_speed) {
  switch (target_link_speed) {
  default:
   data->force_pcie_gen = smu7_get_current_pcie_speed(hwmgr);
   break;
  }
 } else {
  if (target_link_speed < current_link_speed)
   data->pspp_notify_required = 1;
 }

 return 0;
}
