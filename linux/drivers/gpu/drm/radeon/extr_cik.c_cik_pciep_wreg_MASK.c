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
struct radeon_device {int /*<<< orphan*/  pciep_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_DATA ; 
 int /*<<< orphan*/  PCIE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct radeon_device *rdev, u32 reg, u32 v)
{
	unsigned long flags;

	FUNC2(&rdev->pciep_idx_lock, flags);
	FUNC1(PCIE_INDEX, reg);
	(void)FUNC0(PCIE_INDEX);
	FUNC1(PCIE_DATA, v);
	(void)FUNC0(PCIE_DATA);
	FUNC3(&rdev->pciep_idx_lock, flags);
}