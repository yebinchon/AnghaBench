
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ force_pcie_gen; int pspp_notify_required; } ;
typedef enum radeon_pcie_gen { ____Placeholder_radeon_pcie_gen } radeon_pcie_gen ;


 int PCIE_PERF_REQ_PECI_GEN2 ;
 int PCIE_PERF_REQ_PECI_GEN3 ;


 scalar_t__ RADEON_PCIE_GEN_INVALID ;
 int ci_get_current_pcie_speed (struct radeon_device*) ;
 int ci_get_maximum_link_speed (struct radeon_device*,struct radeon_ps*) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int radeon_acpi_pcie_performance_request (struct radeon_device*,int ,int) ;

__attribute__((used)) static void ci_request_link_speed_change_before_state_change(struct radeon_device *rdev,
            struct radeon_ps *radeon_new_state,
            struct radeon_ps *radeon_current_state)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 enum radeon_pcie_gen target_link_speed =
  ci_get_maximum_link_speed(rdev, radeon_new_state);
 enum radeon_pcie_gen current_link_speed;

 if (pi->force_pcie_gen == RADEON_PCIE_GEN_INVALID)
  current_link_speed = ci_get_maximum_link_speed(rdev, radeon_current_state);
 else
  current_link_speed = pi->force_pcie_gen;

 pi->force_pcie_gen = RADEON_PCIE_GEN_INVALID;
 pi->pspp_notify_required = 0;
 if (target_link_speed > current_link_speed) {
  switch (target_link_speed) {
  default:
   pi->force_pcie_gen = ci_get_current_pcie_speed(rdev);
   break;
  }
 } else {
  if (target_link_speed < current_link_speed)
   pi->pspp_notify_required = 1;
 }
}
