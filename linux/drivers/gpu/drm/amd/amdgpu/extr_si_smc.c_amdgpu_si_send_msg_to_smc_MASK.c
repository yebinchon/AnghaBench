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
typedef  scalar_t__ u32 ;
struct amdgpu_device {int usec_timeout; } ;
typedef  int /*<<< orphan*/  PPSMC_Result ;
typedef  int /*<<< orphan*/  PPSMC_Msg ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_Result_Failed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_MESSAGE_0 ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

PPSMC_Result FUNC4(struct amdgpu_device *adev,
				       PPSMC_Msg msg)
{
	u32 tmp;
	int i;

	if (!FUNC2(adev))
		return PPSMC_Result_Failed;

	FUNC1(SMC_MESSAGE_0, msg);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC0(SMC_RESP_0);
		if (tmp != 0)
			break;
		FUNC3(1);
	}

	return (PPSMC_Result)FUNC0(SMC_RESP_0);
}