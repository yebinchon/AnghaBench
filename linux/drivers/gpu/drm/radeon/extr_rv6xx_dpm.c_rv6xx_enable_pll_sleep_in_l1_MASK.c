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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LC_L1_INACTIVITY_MASK ; 
 int /*<<< orphan*/  PCIE_LC_CNTL ; 
 int /*<<< orphan*/  PCIE_P_CNTL ; 
 int P_ALLOW_PRX_FRONTEND_SHUTOFF ; 
 int P_PLL_BUF_PDNB ; 
 int P_PLL_PDNB ; 
 int P_PLL_PWRDN_IN_L1L23 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC2(PCIE_LC_CNTL) & ~LC_L1_INACTIVITY_MASK;
	tmp |= FUNC0(8);
	FUNC4(PCIE_LC_CNTL, tmp);

	/* NOTE, this is a PCIE indirect reg, not PCIE PORT */
	tmp = FUNC1(PCIE_P_CNTL);
	tmp |= P_PLL_PWRDN_IN_L1L23;
	tmp &= ~P_PLL_BUF_PDNB;
	tmp &= ~P_PLL_PDNB;
	tmp |= P_ALLOW_PRX_FRONTEND_SHUTOFF;
	FUNC3(PCIE_P_CNTL, tmp);
}