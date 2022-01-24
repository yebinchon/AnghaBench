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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {int dummy; } ;
typedef  enum idh_request { ____Placeholder_idh_request } idh_request ;

/* Variables and functions */
 int /*<<< orphan*/  BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 ; 
 int /*<<< orphan*/  MSGBUF_DATA ; 
 int /*<<< orphan*/  NBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 ; 
 int /*<<< orphan*/  mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1 ; 
 int /*<<< orphan*/  mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2 ; 
 int /*<<< orphan*/  mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC9 (struct amdgpu_device *adev,
	      enum idh_request req, u32 data1, u32 data2, u32 data3) {
	u32 reg;
	int r;
	uint8_t trn;

	/* IMPORTANT:
	 * clear TRN_MSG_VALID valid to clear host's RCV_MSG_ACK
	 * and with host's RCV_MSG_ACK cleared hw automatically clear host's RCV_MSG_ACK
	 * which lead to VF's TRN_MSG_ACK cleared, otherwise below xgpu_ai_poll_ack()
	 * will return immediatly
	 */
	do {
		FUNC6(adev, false);
		trn = FUNC7(adev);
		if (trn) {
			FUNC5("trn=%x ACK should not assert! wait again !\n", trn);
			FUNC4(1);
		}
	} while(trn);

	reg = FUNC1(FUNC2(NBIO, 0,
					     mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0));
	reg = FUNC0(reg, BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0,
			    MSGBUF_DATA, req);
	FUNC3(FUNC2(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0),
		      reg);
	FUNC3(FUNC2(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1),
				data1);
	FUNC3(FUNC2(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2),
				data2);
	FUNC3(FUNC2(NBIO, 0, mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3),
				data3);

	FUNC6(adev, true);

	/* start to poll ack */
	r = FUNC8(adev);
	if (r)
		FUNC5("Doesn't get ack from pf, continue\n");

	FUNC6(adev, false);
}