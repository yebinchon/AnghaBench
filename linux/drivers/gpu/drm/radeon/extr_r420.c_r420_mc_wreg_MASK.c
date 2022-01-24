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
struct radeon_device {int /*<<< orphan*/  mc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_0001F8_MC_IND_INDEX ; 
 int /*<<< orphan*/  R_0001FC_MC_IND_DATA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct radeon_device *rdev, u32 reg, u32 v)
{
	unsigned long flags;

	FUNC3(&rdev->mc_idx_lock, flags);
	FUNC2(R_0001F8_MC_IND_INDEX, FUNC0(reg) |
		FUNC1(1));
	FUNC2(R_0001FC_MC_IND_DATA, v);
	FUNC4(&rdev->mc_idx_lock, flags);
}