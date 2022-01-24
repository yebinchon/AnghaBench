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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_DPM_N_LevelsDisabled ; 
 int /*<<< orphan*/  SMU_SCRATCH0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct radeon_device *rdev, u32 n)
{
	FUNC0(SMU_SCRATCH0, n);

	return FUNC1(rdev, PPSMC_MSG_DPM_N_LevelsDisabled);
}