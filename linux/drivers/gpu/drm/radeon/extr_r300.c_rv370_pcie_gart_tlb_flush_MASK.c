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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_CNTL ; 
 int RADEON_PCIE_TX_GART_INVALIDATE_TLB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct radeon_device *rdev)
{
	uint32_t tmp;
	int i;

	/* Workaround HW bug do flush 2 times */
	for (i = 0; i < 2; i++) {
		tmp = FUNC0(RADEON_PCIE_TX_GART_CNTL);
		FUNC1(RADEON_PCIE_TX_GART_CNTL, tmp | RADEON_PCIE_TX_GART_INVALIDATE_TLB);
		(void)FUNC0(RADEON_PCIE_TX_GART_CNTL);
		FUNC1(RADEON_PCIE_TX_GART_CNTL, tmp);
	}
	FUNC2();
}