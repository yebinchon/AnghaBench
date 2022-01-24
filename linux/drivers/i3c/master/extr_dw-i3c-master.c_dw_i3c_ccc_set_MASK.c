#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i3c_ccc_cmd {int id; int /*<<< orphan*/  err; TYPE_2__* dests; } ;
struct dw_i3c_xfer {int ret; struct dw_i3c_cmd* cmds; int /*<<< orphan*/  comp; } ;
struct dw_i3c_master {int dummy; } ;
struct dw_i3c_cmd {int cmd_hi; int cmd_lo; scalar_t__ error; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ payload; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int COMMAND_PORT_CP ; 
 int FUNC2 (int) ; 
 int COMMAND_PORT_ROC ; 
 int COMMAND_PORT_TOC ; 
 int COMMAND_PORT_TRANSFER_ARG ; 
 int ENOMEM ; 
 int I3C_CCC_DIRECT ; 
 int /*<<< orphan*/  I3C_ERROR_M2 ; 
 scalar_t__ RESPONSE_ERROR_IBA_NACK ; 
 int /*<<< orphan*/  XFER_TIMEOUT ; 
 struct dw_i3c_xfer* FUNC3 (struct dw_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_i3c_xfer*) ; 
 int FUNC7 (struct dw_i3c_master*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dw_i3c_master *master,
			  struct i3c_ccc_cmd *ccc)
{
	struct dw_i3c_xfer *xfer;
	struct dw_i3c_cmd *cmd;
	int ret, pos = 0;

	if (ccc->id & I3C_CCC_DIRECT) {
		pos = FUNC7(master, ccc->dests[0].addr);
		if (pos < 0)
			return pos;
	}

	xfer = FUNC3(master, 1);
	if (!xfer)
		return -ENOMEM;

	cmd = xfer->cmds;
	cmd->tx_buf = ccc->dests[0].payload.data;
	cmd->tx_len = ccc->dests[0].payload.len;

	cmd->cmd_hi = FUNC0(ccc->dests[0].payload.len) |
		      COMMAND_PORT_TRANSFER_ARG;

	cmd->cmd_lo = COMMAND_PORT_CP |
		      FUNC2(pos) |
		      FUNC1(ccc->id) |
		      COMMAND_PORT_TOC |
		      COMMAND_PORT_ROC;

	FUNC5(master, xfer);
	if (!FUNC8(&xfer->comp, XFER_TIMEOUT))
		FUNC4(master, xfer);

	ret = xfer->ret;
	if (xfer->cmds[0].error == RESPONSE_ERROR_IBA_NACK)
		ccc->err = I3C_ERROR_M2;

	FUNC6(xfer);

	return ret;
}