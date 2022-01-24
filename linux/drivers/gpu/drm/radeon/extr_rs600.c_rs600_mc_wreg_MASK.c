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
struct radeon_device {int /*<<< orphan*/  mc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_000070_MC_IND_INDEX ; 
 int /*<<< orphan*/  R_000074_MC_IND_DATA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct radeon_device *rdev, uint32_t reg, uint32_t v)
{
	unsigned long flags;

	FUNC4(&rdev->mc_idx_lock, flags);
	FUNC3(R_000070_MC_IND_INDEX, FUNC0(reg) |
		FUNC1(1) | FUNC2(1));
	FUNC3(R_000074_MC_IND_DATA, v);
	FUNC5(&rdev->mc_idx_lock, flags);
}