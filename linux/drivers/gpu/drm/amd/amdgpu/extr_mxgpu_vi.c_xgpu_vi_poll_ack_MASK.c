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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  MAILBOX_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRN_MSG_ACK ; 
 int VI_MAILBOX_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mmMAILBOX_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int r = 0, timeout = VI_MAILBOX_TIMEDOUT;
	u32 mask = FUNC0(MAILBOX_CONTROL, TRN_MSG_ACK);
	u32 reg;

	reg = FUNC1(mmMAILBOX_CONTROL);
	while (!(reg & mask)) {
		if (timeout <= 0) {
			FUNC3("Doesn't get ack from pf.\n");
			r = -ETIME;
			break;
		}
		FUNC2(5);
		timeout -= 5;

		reg = FUNC1(mmMAILBOX_CONTROL);
	}

	return r;
}