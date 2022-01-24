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
struct radeon_device {int /*<<< orphan*/  smc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMC_IND_DATA_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct radeon_device *rdev,
			    u32 smc_address, u32 value, u32 limit)
{
	unsigned long flags;
	int ret;

	FUNC2(&rdev->smc_idx_lock, flags);
	ret = FUNC1(rdev, smc_address, limit);
	if (ret == 0)
		FUNC0(SMC_IND_DATA_0, value);
	FUNC3(&rdev->smc_idx_lock, flags);

	return ret;
}