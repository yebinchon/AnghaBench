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
typedef  int u32 ;
struct cdns_i3c_xfer {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct cdns_i3c_xfer* cur; } ;
struct cdns_i3c_master {TYPE_1__ xferqueue; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CTRL ; 
 int CTRL_DEV_EN ; 
 int FLUSH_CMD_FIFO ; 
 int FLUSH_CMD_RESP ; 
 scalar_t__ FLUSH_CTRL ; 
 int FLUSH_RX_FIFO ; 
 int FLUSH_TX_FIFO ; 
 scalar_t__ MST_IDR ; 
 int MST_INT_CMDD_EMP ; 
 scalar_t__ MST_STATUS0 ; 
 int MST_STATUS0_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cdns_i3c_master *master,
					 struct cdns_i3c_xfer *xfer)
{
	unsigned long flags;

	FUNC3(&master->xferqueue.lock, flags);
	if (master->xferqueue.cur == xfer) {
		u32 status;

		FUNC5(FUNC1(master->regs + CTRL) & ~CTRL_DEV_EN,
		       master->regs + CTRL);
		FUNC2(master->regs + MST_STATUS0, status,
					  status & MST_STATUS0_IDLE, 10,
					  1000000);
		master->xferqueue.cur = NULL;
		FUNC5(FLUSH_RX_FIFO | FLUSH_TX_FIFO | FLUSH_CMD_FIFO |
		       FLUSH_CMD_RESP,
		       master->regs + FLUSH_CTRL);
		FUNC5(MST_INT_CMDD_EMP, master->regs + MST_IDR);
		FUNC5(FUNC1(master->regs + CTRL) | CTRL_DEV_EN,
		       master->regs + CTRL);
	} else {
		FUNC0(&xfer->node);
	}
	FUNC4(&master->xferqueue.lock, flags);
}