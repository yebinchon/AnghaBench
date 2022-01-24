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
struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_cmd {int id; int /*<<< orphan*/  err; TYPE_2__* dests; scalar_t__ rnw; } ;
struct cdns_i3c_xfer {int ret; struct cdns_i3c_cmd* cmds; int /*<<< orphan*/  comp; } ;
struct cdns_i3c_master {int dummy; } ;
struct cdns_i3c_cmd {int cmd0; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  rx_len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  cmd1; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ payload; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CMD0_FIFO_IS_CCC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CMD0_FIFO_RNW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENOMEM ; 
 int I3C_CCC_DIRECT ; 
 int /*<<< orphan*/  FUNC3 (struct cdns_i3c_cmd*) ; 
 struct cdns_i3c_xfer* FUNC4 (struct cdns_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct cdns_i3c_master* FUNC9 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i3c_master_controller *m,
					struct i3c_ccc_cmd *cmd)
{
	struct cdns_i3c_master *master = FUNC9(m);
	struct cdns_i3c_xfer *xfer;
	struct cdns_i3c_cmd *ccmd;
	int ret;

	xfer = FUNC4(master, 1);
	if (!xfer)
		return -ENOMEM;

	ccmd = xfer->cmds;
	ccmd->cmd1 = FUNC2(cmd->id);
	ccmd->cmd0 = CMD0_FIFO_IS_CCC |
		     FUNC1(cmd->dests[0].payload.len);

	if (cmd->id & I3C_CCC_DIRECT)
		ccmd->cmd0 |= FUNC0(cmd->dests[0].addr);

	if (cmd->rnw) {
		ccmd->cmd0 |= CMD0_FIFO_RNW;
		ccmd->rx_buf = cmd->dests[0].payload.data;
		ccmd->rx_len = cmd->dests[0].payload.len;
	} else {
		ccmd->tx_buf = cmd->dests[0].payload.data;
		ccmd->tx_len = cmd->dests[0].payload.len;
	}

	FUNC6(master, xfer);
	if (!FUNC10(&xfer->comp, FUNC8(1000)))
		FUNC7(master, xfer);

	ret = xfer->ret;
	cmd->err = FUNC3(&xfer->cmds[0]);
	FUNC5(xfer);

	return ret;
}