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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_MESSAGE_0 ; 
 int /*<<< orphan*/  SMC_RESP_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev, u32 id)
{
	int i;
	u32 v = 0;

	FUNC2(SMC_MESSAGE_0, id);
	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC1(SMC_RESP_0) != 0)
			break;
		FUNC3(1);
	}
	v = FUNC1(SMC_RESP_0);

	if (v != 1) {
		if (v == 0xFF) {
			FUNC0("SMC failed to handle the message!\n");
			return -EINVAL;
		} else if (v == 0xFE) {
			FUNC0("Unknown SMC message!\n");
			return -EINVAL;
		}
	}

	return 0;
}