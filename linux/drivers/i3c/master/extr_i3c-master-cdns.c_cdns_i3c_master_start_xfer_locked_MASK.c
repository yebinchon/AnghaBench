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
struct cdns_i3c_xfer {unsigned int ncmds; struct cdns_i3c_cmd* cmds; } ;
struct TYPE_2__ {struct cdns_i3c_xfer* cur; } ;
struct cdns_i3c_master {scalar_t__ regs; TYPE_1__ xferqueue; } ;
struct cdns_i3c_cmd {int cmd1; int cmd0; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_buf; } ;

/* Variables and functions */
 scalar_t__ CMD0_FIFO ; 
 scalar_t__ CMD1_FIFO ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ CTRL ; 
 int CTRL_MCS ; 
 scalar_t__ MST_ICR ; 
 scalar_t__ MST_IER ; 
 int MST_INT_CMDD_EMP ; 
 int /*<<< orphan*/  FUNC1 (struct cdns_i3c_master*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct cdns_i3c_master *master)
{
	struct cdns_i3c_xfer *xfer = master->xferqueue.cur;
	unsigned int i;

	if (!xfer)
		return;

	FUNC3(MST_INT_CMDD_EMP, master->regs + MST_ICR);
	for (i = 0; i < xfer->ncmds; i++) {
		struct cdns_i3c_cmd *cmd = &xfer->cmds[i];

		FUNC1(master, cmd->tx_buf,
					      cmd->tx_len);
	}

	for (i = 0; i < xfer->ncmds; i++) {
		struct cdns_i3c_cmd *cmd = &xfer->cmds[i];

		FUNC3(cmd->cmd1 | FUNC0(i),
		       master->regs + CMD1_FIFO);
		FUNC3(cmd->cmd0, master->regs + CMD0_FIFO);
	}

	FUNC3(FUNC2(master->regs + CTRL) | CTRL_MCS,
	       master->regs + CTRL);
	FUNC3(MST_INT_CMDD_EMP, master->regs + MST_IER);
}