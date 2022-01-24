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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ASPM_TO_L1_DIS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LC_L1_INACTIVITY_MASK ; 
 int /*<<< orphan*/  LC_PMI_TO_L1_DIS ; 
 int /*<<< orphan*/  PCIE_LC_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC1(PCIE_LC_CNTL);
	tmp &= ~LC_L1_INACTIVITY_MASK;
	tmp |= FUNC0(4);
	tmp &= ~LC_PMI_TO_L1_DIS;
	tmp &= ~LC_ASPM_TO_L1_DIS;
	FUNC2(PCIE_LC_CNTL, tmp);
}