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
struct radeon_device {int /*<<< orphan*/  pif_idx_lock; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  EVERGREEN_PIF_PHY0_DATA ; 
 int /*<<< orphan*/  EVERGREEN_PIF_PHY0_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC4(struct radeon_device *rdev, u32 reg)
{
	unsigned long flags;
	u32 r;

	FUNC2(&rdev->pif_idx_lock, flags);
	FUNC1(EVERGREEN_PIF_PHY0_INDEX, ((reg) & 0xffff));
	r = FUNC0(EVERGREEN_PIF_PHY0_DATA);
	FUNC3(&rdev->pif_idx_lock, flags);
	return r;
}