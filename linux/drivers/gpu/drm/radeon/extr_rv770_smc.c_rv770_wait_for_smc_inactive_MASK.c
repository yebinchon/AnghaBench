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
struct radeon_device {int usec_timeout; } ;
typedef  int /*<<< orphan*/  PPSMC_Result ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_Result_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_IO ; 
 int SMC_STOP_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

PPSMC_Result FUNC3(struct radeon_device *rdev)
{
	int i;
	PPSMC_Result result = PPSMC_Result_OK;

	if (!FUNC1(rdev))
		return result;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(SMC_IO) & SMC_STOP_MODE)
			break;
		FUNC2(1);
	}

	return result;
}