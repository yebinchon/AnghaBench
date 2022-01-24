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
struct radeon_device {int usec_timeout; } ;

/* Variables and functions */
 int LC_CURRENT_DATA_RATE ; 
 int LC_GEN2_EN ; 
 int LC_INITIATE_LINK_SPEED_CHANGE ; 
 int /*<<< orphan*/  PCIE_LC_SPEED_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;
	int i;

	tmp = FUNC0(PCIE_LC_SPEED_CNTL);
	tmp &= LC_GEN2_EN;
	FUNC1(PCIE_LC_SPEED_CNTL, tmp);

	tmp = FUNC0(PCIE_LC_SPEED_CNTL);
	tmp |= LC_INITIATE_LINK_SPEED_CHANGE;
	FUNC1(PCIE_LC_SPEED_CNTL, tmp);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (!(FUNC0(PCIE_LC_SPEED_CNTL) & LC_CURRENT_DATA_RATE))
			break;
		FUNC2(1);
	}

	tmp = FUNC0(PCIE_LC_SPEED_CNTL);
	tmp &= ~LC_INITIATE_LINK_SPEED_CHANGE;
	FUNC1(PCIE_LC_SPEED_CNTL, tmp);
}