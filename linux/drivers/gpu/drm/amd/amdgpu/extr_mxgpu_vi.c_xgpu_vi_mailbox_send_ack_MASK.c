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
 int /*<<< orphan*/  MAILBOX_CONTROL ; 
 int /*<<< orphan*/  RCV_MSG_ACK ; 
 int /*<<< orphan*/  RCV_MSG_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int VI_MAILBOX_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmMAILBOX_CONTROL ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	u32 reg;
	int timeout = VI_MAILBOX_TIMEDOUT;
	u32 mask = FUNC0(MAILBOX_CONTROL, RCV_MSG_VALID);

	reg = FUNC2(mmMAILBOX_CONTROL);
	reg = FUNC1(reg, MAILBOX_CONTROL, RCV_MSG_ACK, 1);
	FUNC3(mmMAILBOX_CONTROL, reg);

	/*Wait for RCV_MSG_VALID to be 0*/
	reg = FUNC2(mmMAILBOX_CONTROL);
	while (reg & mask) {
		if (timeout <= 0) {
			FUNC5("RCV_MSG_VALID is not cleared\n");
			break;
		}
		FUNC4(1);
		timeout -=1;

		reg = FUNC2(mmMAILBOX_CONTROL);
	}
}