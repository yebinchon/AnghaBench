
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_ps {int caps; } ;
struct radeon_device {int dummy; } ;


 int ATOM_PPLIB_PCIE_LINK_WIDTH_MASK ;
 int ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT ;
 int SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width ;
 scalar_t__ radeon_get_pcie_lanes (struct radeon_device*) ;
 int radeon_set_pcie_lanes (struct radeon_device*,scalar_t__) ;
 int si_write_smc_soft_register (struct radeon_device*,int ,scalar_t__) ;

__attribute__((used)) static void si_set_pcie_lane_width_in_smc(struct radeon_device *rdev,
       struct radeon_ps *radeon_new_state,
       struct radeon_ps *radeon_current_state)
{
 u32 lane_width;
 u32 new_lane_width =
  ((radeon_new_state->caps & ATOM_PPLIB_PCIE_LINK_WIDTH_MASK) >> ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT) + 1;
 u32 current_lane_width =
  ((radeon_current_state->caps & ATOM_PPLIB_PCIE_LINK_WIDTH_MASK) >> ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT) + 1;

 if (new_lane_width != current_lane_width) {
  radeon_set_pcie_lanes(rdev, new_lane_width);
  lane_width = radeon_get_pcie_lanes(rdev);
  si_write_smc_soft_register(rdev, SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, lane_width);
 }
}
