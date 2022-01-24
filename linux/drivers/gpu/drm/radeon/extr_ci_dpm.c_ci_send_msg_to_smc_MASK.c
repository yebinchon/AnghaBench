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
struct radeon_device {int usec_timeout; } ;
typedef  int /*<<< orphan*/  PPSMC_Result ;
typedef  int /*<<< orphan*/  PPSMC_Msg ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_Result_Failed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_MESSAGE_0 ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static PPSMC_Result FUNC4(struct radeon_device *rdev, PPSMC_Msg msg)
{
	u32 tmp;
	int i;

	if (!FUNC2(rdev))
		return PPSMC_Result_Failed;

	FUNC1(SMC_MESSAGE_0, msg);

	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC0(SMC_RESP_0);
		if (tmp != 0)
			break;
		FUNC3(1);
	}
	tmp = FUNC0(SMC_RESP_0);

	return (PPSMC_Result)tmp;
}