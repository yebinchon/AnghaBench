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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int /*<<< orphan*/  mc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000070_MC_IND_INDEX ; 
 int /*<<< orphan*/  R_000074_MC_IND_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

uint32_t FUNC6(struct radeon_device *rdev, uint32_t reg)
{
	unsigned long flags;
	u32 r;

	FUNC4(&rdev->mc_idx_lock, flags);
	FUNC3(R_000070_MC_IND_INDEX, FUNC1(reg) |
		FUNC2(1));
	r = FUNC0(R_000074_MC_IND_DATA);
	FUNC5(&rdev->mc_idx_lock, flags);
	return r;
}