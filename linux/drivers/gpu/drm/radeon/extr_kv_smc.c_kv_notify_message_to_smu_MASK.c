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
struct radeon_device {scalar_t__ usec_timeout; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_MESSAGE_0 ; 
 scalar_t__ SMC_MSG_MASK ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 scalar_t__ SMC_RESP_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct radeon_device *rdev, u32 id)
{
	u32 i;
	u32 tmp = 0;

	FUNC1(SMC_MESSAGE_0, id & SMC_MSG_MASK);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if ((FUNC0(SMC_RESP_0) & SMC_RESP_MASK) != 0)
			break;
		FUNC2(1);
	}
	tmp = FUNC0(SMC_RESP_0) & SMC_RESP_MASK;

	if (tmp != 1) {
		if (tmp == 0xFF)
			return -EINVAL;
		else if (tmp == 0xFE)
			return -EINVAL;
	}

	return 0;
}