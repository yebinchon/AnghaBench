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
typedef  int u8 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE ; 
 int AI_MAILBOX_POLL_ACK_TIMEDOUT ; 
 int ETIME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	int timeout  = AI_MAILBOX_POLL_ACK_TIMEDOUT;
	u8 reg;

	do {
		reg = FUNC0(AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE);
		if (reg & 2)
			return 0;

		FUNC1(5);
		timeout -= 5;
	} while (timeout > 1);

	FUNC2("Doesn't get TRN_MSG_ACK from pf in %d msec\n", AI_MAILBOX_POLL_ACK_TIMEDOUT);

	return -ETIME;
}