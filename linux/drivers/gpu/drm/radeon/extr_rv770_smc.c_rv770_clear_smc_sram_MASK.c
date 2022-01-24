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
typedef  scalar_t__ u16 ;
struct radeon_device {int /*<<< orphan*/  smc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMC_SRAM_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev, u16 limit)
{
	unsigned long flags;
	u16 i;

	FUNC2(&rdev->smc_idx_lock, flags);
	for (i = 0;  i < limit; i += 4) {
		FUNC1(rdev, i, limit);
		FUNC0(SMC_SRAM_DATA, 0);
	}
	FUNC3(&rdev->smc_idx_lock, flags);
}