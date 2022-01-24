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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PPSMC_MSG_SwitchToSwState ; 
 scalar_t__ PPSMC_Result_OK ; 
 scalar_t__ FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct radeon_device *rdev)
{
	if (FUNC1(rdev, PPSMC_MSG_SwitchToSwState) != PPSMC_Result_OK)
		FUNC0("rv770_set_sw_state failed\n");
	return 0;
}