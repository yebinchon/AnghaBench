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
struct kv_power_info {int lowest_valid; int highest_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_SCLKDPM_SetEnabledMask ; 
 struct kv_power_info* FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC0(rdev);
	u32 i, new_mask = 0;

	for (i = pi->lowest_valid; i <= pi->highest_valid; i++)
		new_mask |= (1 << i);

	return FUNC1(rdev,
						 PPSMC_MSG_SCLKDPM_SetEnabledMask,
						 new_mask);
}