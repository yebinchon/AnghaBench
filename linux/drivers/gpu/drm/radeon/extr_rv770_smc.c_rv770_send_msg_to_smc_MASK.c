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
struct radeon_device {int usec_timeout; } ;
typedef  scalar_t__ PPSMC_Result ;
typedef  int /*<<< orphan*/  PPSMC_Msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_SMC_MSG_MASK ; 
 int HOST_SMC_RESP_MASK ; 
 int HOST_SMC_RESP_SHIFT ; 
 scalar_t__ PPSMC_Result_Failed ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

PPSMC_Result FUNC5(struct radeon_device *rdev, PPSMC_Msg msg)
{
	u32 tmp;
	int i;
	PPSMC_Result result;

	if (!FUNC3(rdev))
		return PPSMC_Result_Failed;

	FUNC2(SMC_MSG, FUNC0(msg), ~HOST_SMC_MSG_MASK);

	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC1(SMC_MSG) & HOST_SMC_RESP_MASK;
		tmp >>= HOST_SMC_RESP_SHIFT;
		if (tmp != 0)
			break;
		FUNC4(1);
	}

	tmp = FUNC1(SMC_MSG) & HOST_SMC_RESP_MASK;
	tmp >>= HOST_SMC_RESP_SHIFT;

	result = (PPSMC_Result)tmp;
	return result;
}