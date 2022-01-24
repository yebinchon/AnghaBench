#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct creq_qp_event {scalar_t__ status; } ;
struct creq_base {int dummy; } ;
struct cmdq_base {int opcode; int /*<<< orphan*/  cookie; } ;
struct bnxt_qplib_rcfw {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EFAULT ; 
 int /*<<< orphan*/  FIRMWARE_TIMED_OUT ; 
 scalar_t__ RCFW_CMD_WAIT_TIME_MS ; 
 int RCFW_MAX_COOKIE_VALUE ; 
 int FUNC0 (struct bnxt_qplib_rcfw*,int) ; 
 int FUNC1 (struct bnxt_qplib_rcfw*,struct cmdq_base*,struct creq_base*,void*,int) ; 
 int FUNC2 (struct bnxt_qplib_rcfw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

int FUNC8(struct bnxt_qplib_rcfw *rcfw,
				 struct cmdq_base *req,
				 struct creq_base *resp,
				 void *sb, u8 is_block)
{
	struct creq_qp_event *evnt = (struct creq_qp_event *)resp;
	u16 cookie;
	u8 opcode, retry_cnt = 0xFF;
	int rc = 0;

	do {
		opcode = req->opcode;
		rc = FUNC1(rcfw, req, resp, sb, is_block);
		cookie = FUNC4(req->cookie) & RCFW_MAX_COOKIE_VALUE;
		if (!rc)
			break;

		if (!retry_cnt || (rc != -EAGAIN && rc != -EBUSY)) {
			/* send failed */
			FUNC3(&rcfw->pdev->dev, "cmdq[%#x]=%#x send failed\n",
				cookie, opcode);
			return rc;
		}
		is_block ? FUNC5(1) : FUNC7(500, 1000);

	} while (retry_cnt--);

	if (is_block)
		rc = FUNC0(rcfw, cookie);
	else
		rc = FUNC2(rcfw, cookie);
	if (rc) {
		/* timed out */
		FUNC3(&rcfw->pdev->dev, "cmdq[%#x]=%#x timedout (%d)msec\n",
			cookie, opcode, RCFW_CMD_WAIT_TIME_MS);
		FUNC6(FIRMWARE_TIMED_OUT, &rcfw->flags);
		return rc;
	}

	if (evnt->status) {
		/* failed with status */
		FUNC3(&rcfw->pdev->dev, "cmdq[%#x]=%#x status %#x\n",
			cookie, opcode, evnt->status);
		rc = -EFAULT;
	}

	return rc;
}