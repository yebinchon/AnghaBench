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
struct amdgpu_device {int usec_timeout; } ;
typedef  int /*<<< orphan*/  PPSMC_Result ;

/* Variables and functions */
 int CKEN ; 
 int /*<<< orphan*/  PPSMC_Result_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_SYSCON_CLOCK_CNTL_0 ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

PPSMC_Result FUNC3(struct amdgpu_device *adev)
{
	u32 tmp;
	int i;

	if (!FUNC1(adev))
		return PPSMC_Result_OK;

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC0(SMC_SYSCON_CLOCK_CNTL_0);
		if ((tmp & CKEN) == 0)
			break;
		FUNC2(1);
	}

	return PPSMC_Result_OK;
}