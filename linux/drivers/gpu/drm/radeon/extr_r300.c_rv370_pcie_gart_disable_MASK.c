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
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_CNTL ; 
 int RADEON_PCIE_TX_GART_EN ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_END_HI ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_END_LO ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_START_HI ; 
 int /*<<< orphan*/  RADEON_PCIE_TX_GART_START_LO ; 
 int RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

void FUNC3(struct radeon_device *rdev)
{
	u32 tmp;

	FUNC1(RADEON_PCIE_TX_GART_START_LO, 0);
	FUNC1(RADEON_PCIE_TX_GART_END_LO, 0);
	FUNC1(RADEON_PCIE_TX_GART_START_HI, 0);
	FUNC1(RADEON_PCIE_TX_GART_END_HI, 0);
	tmp = FUNC0(RADEON_PCIE_TX_GART_CNTL);
	tmp |= RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD;
	FUNC1(RADEON_PCIE_TX_GART_CNTL, tmp & ~RADEON_PCIE_TX_GART_EN);
	FUNC2(rdev);
}