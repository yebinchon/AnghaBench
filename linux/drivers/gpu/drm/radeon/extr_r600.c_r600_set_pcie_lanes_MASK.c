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
typedef  int u32 ;
struct radeon_device {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_PCIE ; 
 int /*<<< orphan*/  RADEON_PCIE_LC_LINK_WIDTH_CNTL ; 
 int RADEON_PCIE_LC_LINK_WIDTH_MASK ; 
 int RADEON_PCIE_LC_LINK_WIDTH_SHIFT ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X0 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X1 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X12 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X16 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X2 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X4 ; 
 int RADEON_PCIE_LC_LINK_WIDTH_X8 ; 
 int RADEON_PCIE_LC_RECONFIG_NOW ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

void FUNC5(struct radeon_device *rdev, int lanes)
{
	u32 link_width_cntl, mask;

	if (rdev->flags & RADEON_IS_IGP)
		return;

	if (!(rdev->flags & RADEON_IS_PCIE))
		return;

	/* x2 cards have a special sequence */
	if (FUNC0(rdev))
		return;

	FUNC4(rdev);

	switch (lanes) {
	case 0:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X0;
		break;
	case 1:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X1;
		break;
	case 2:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X2;
		break;
	case 4:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X4;
		break;
	case 8:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X8;
		break;
	case 12:
		/* not actually supported */
		mask = RADEON_PCIE_LC_LINK_WIDTH_X12;
		break;
	case 16:
		mask = RADEON_PCIE_LC_LINK_WIDTH_X16;
		break;
	default:
		FUNC1("invalid pcie lane request: %d\n", lanes);
		return;
	}

	link_width_cntl = FUNC2(RADEON_PCIE_LC_LINK_WIDTH_CNTL);
	link_width_cntl &= ~RADEON_PCIE_LC_LINK_WIDTH_MASK;
	link_width_cntl |= mask << RADEON_PCIE_LC_LINK_WIDTH_SHIFT;
	link_width_cntl |= (RADEON_PCIE_LC_RECONFIG_NOW |
			    R600_PCIE_LC_RECONFIG_ARC_MISSING_ESCAPE);

	FUNC3(RADEON_PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
}