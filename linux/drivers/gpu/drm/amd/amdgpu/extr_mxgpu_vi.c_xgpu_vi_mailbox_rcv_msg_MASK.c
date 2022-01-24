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
typedef  enum idh_event { ____Placeholder_idh_event } idh_event ;

/* Variables and functions */
 int ENOENT ; 
 int IDH_FLR_NOTIFICATION_CMPL ; 
 int /*<<< orphan*/  MAILBOX_CONTROL ; 
 int /*<<< orphan*/  RCV_MSG_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMAILBOX_CONTROL ; 
 int /*<<< orphan*/  mmMAILBOX_MSGBUF_RCV_DW0 ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
				   enum idh_event event)
{
	u32 reg;
	u32 mask = FUNC0(MAILBOX_CONTROL, RCV_MSG_VALID);

	/* workaround: host driver doesn't set VALID for CMPL now */
	if (event != IDH_FLR_NOTIFICATION_CMPL) {
		reg = FUNC1(mmMAILBOX_CONTROL);
		if (!(reg & mask))
			return -ENOENT;
	}

	reg = FUNC1(mmMAILBOX_MSGBUF_RCV_DW0);
	if (reg != event)
		return -ENOENT;

	/* send ack to PF */
	FUNC2(adev);

	return 0;
}