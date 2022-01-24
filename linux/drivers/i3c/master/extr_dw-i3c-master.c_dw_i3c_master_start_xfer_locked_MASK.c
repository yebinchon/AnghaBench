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
typedef  int /*<<< orphan*/  u32 ;
struct dw_i3c_xfer {unsigned int ncmds; struct dw_i3c_cmd* cmds; } ;
struct TYPE_2__ {struct dw_i3c_xfer* cur; } ;
struct dw_i3c_master {scalar_t__ regs; TYPE_1__ xferqueue; } ;
struct dw_i3c_cmd {int /*<<< orphan*/  cmd_lo; int /*<<< orphan*/  cmd_hi; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_buf; } ;

/* Variables and functions */
 scalar_t__ COMMAND_QUEUE_PORT ; 
 scalar_t__ QUEUE_THLD_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  QUEUE_THLD_CTRL_RESP_BUF_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct dw_i3c_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dw_i3c_master *master)
{
	struct dw_i3c_xfer *xfer = master->xferqueue.cur;
	unsigned int i;
	u32 thld_ctrl;

	if (!xfer)
		return;

	for (i = 0; i < xfer->ncmds; i++) {
		struct dw_i3c_cmd *cmd = &xfer->cmds[i];

		FUNC1(master, cmd->tx_buf, cmd->tx_len);
	}

	thld_ctrl = FUNC2(master->regs + QUEUE_THLD_CTRL);
	thld_ctrl &= ~QUEUE_THLD_CTRL_RESP_BUF_MASK;
	thld_ctrl |= FUNC0(xfer->ncmds);
	FUNC3(thld_ctrl, master->regs + QUEUE_THLD_CTRL);

	for (i = 0; i < xfer->ncmds; i++) {
		struct dw_i3c_cmd *cmd = &xfer->cmds[i];

		FUNC3(cmd->cmd_hi, master->regs + COMMAND_QUEUE_PORT);
		FUNC3(cmd->cmd_lo, master->regs + COMMAND_QUEUE_PORT);
	}
}