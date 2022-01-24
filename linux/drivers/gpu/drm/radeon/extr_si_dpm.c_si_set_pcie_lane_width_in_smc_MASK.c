#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct radeon_ps {int caps; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int ATOM_PPLIB_PCIE_LINK_WIDTH_MASK ; 
 int ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT ; 
 int /*<<< orphan*/  SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
					  struct radeon_ps *radeon_new_state,
					  struct radeon_ps *radeon_current_state)
{
	u32 lane_width;
	u32 new_lane_width =
		((radeon_new_state->caps & ATOM_PPLIB_PCIE_LINK_WIDTH_MASK) >> ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT) + 1;
	u32 current_lane_width =
		((radeon_current_state->caps & ATOM_PPLIB_PCIE_LINK_WIDTH_MASK) >> ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT) + 1;

	if (new_lane_width != current_lane_width) {
		FUNC1(rdev, new_lane_width);
		lane_width = FUNC0(rdev);
		FUNC2(rdev, SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, lane_width);
	}
}