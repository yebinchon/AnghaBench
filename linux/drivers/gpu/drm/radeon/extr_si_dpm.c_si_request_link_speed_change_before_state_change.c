
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {scalar_t__ force_pcie_gen; int pspp_notify_required; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
typedef enum radeon_pcie_gen { ____Placeholder_radeon_pcie_gen } radeon_pcie_gen ;


 int PCIE_PERF_REQ_PECI_GEN2 ;
 int PCIE_PERF_REQ_PECI_GEN3 ;


 scalar_t__ RADEON_PCIE_GEN_INVALID ;
 int radeon_acpi_pcie_performance_request (struct radeon_device*,int ,int) ;
 int si_get_current_pcie_speed (struct radeon_device*) ;
 int si_get_maximum_link_speed (struct radeon_device*,struct radeon_ps*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static void si_request_link_speed_change_before_state_change(struct radeon_device *rdev,
            struct radeon_ps *radeon_new_state,
            struct radeon_ps *radeon_current_state)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 enum radeon_pcie_gen target_link_speed = si_get_maximum_link_speed(rdev, radeon_new_state);
 enum radeon_pcie_gen current_link_speed;

 if (si_pi->force_pcie_gen == RADEON_PCIE_GEN_INVALID)
  current_link_speed = si_get_maximum_link_speed(rdev, radeon_current_state);
 else
  current_link_speed = si_pi->force_pcie_gen;

 si_pi->force_pcie_gen = RADEON_PCIE_GEN_INVALID;
 si_pi->pspp_notify_required = 0;
 if (target_link_speed > current_link_speed) {
  switch (target_link_speed) {
  default:
   si_pi->force_pcie_gen = si_get_current_pcie_speed(rdev);
   break;
  }
 } else {
  if (target_link_speed < current_link_speed)
   si_pi->pspp_notify_required = 1;
 }
}
