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
 int LC_L0S_INACTIVITY_MASK ; 
 int /*<<< orphan*/  PCIE_LC_CNTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC1(PCIE_LC_CNTL) & ~LC_L0S_INACTIVITY_MASK;
	tmp |= FUNC0(3);
	FUNC2(PCIE_LC_CNTL, tmp);
}