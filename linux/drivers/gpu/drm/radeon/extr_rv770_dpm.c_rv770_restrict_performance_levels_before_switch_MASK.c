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
struct radeon_device {int dummy; } ;
typedef  int /*<<< orphan*/  PPSMC_Msg ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PPSMC_MSG_NoForcedLevel ; 
 scalar_t__ PPSMC_MSG_TwoLevelsDisabled ; 
 scalar_t__ PPSMC_Result_OK ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ) ; 

int FUNC1(struct radeon_device *rdev)
{
	if (FUNC0(rdev, (PPSMC_Msg)(PPSMC_MSG_NoForcedLevel)) != PPSMC_Result_OK)
		return -EINVAL;

	if (FUNC0(rdev, (PPSMC_Msg)(PPSMC_MSG_TwoLevelsDisabled)) != PPSMC_Result_OK)
		return -EINVAL;

	return 0;
}