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
typedef  int u32 ;
struct i3c_master_controller {int dummy; } ;
struct dw_i3c_xfer {int /*<<< orphan*/  comp; struct dw_i3c_cmd* cmds; } ;
struct dw_i3c_master {int free_pos; int maxdevs; int* addrs; int /*<<< orphan*/  datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_cmd {int cmd_hi; int cmd_lo; int rx_len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int COMMAND_PORT_ADDR_ASSGN_CMD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int COMMAND_PORT_ROC ; 
 int COMMAND_PORT_TOC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I3C_BROADCAST_ADDR ; 
 int /*<<< orphan*/  I3C_CCC_ENTDAA ; 
 int I3C_CCC_EVENT_HJ ; 
 int I3C_CCC_EVENT_MR ; 
 int I3C_CCC_EVENT_SIR ; 
 int /*<<< orphan*/  XFER_TIMEOUT ; 
 struct dw_i3c_xfer* FUNC7 (struct dw_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct dw_i3c_xfer*) ; 
 int FUNC11 (struct dw_i3c_master*) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct i3c_master_controller*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct i3c_master_controller*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct i3c_master_controller*,int) ; 
 struct dw_i3c_master* FUNC16 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct i3c_master_controller *m)
{
	struct dw_i3c_master *master = FUNC16(m);
	struct dw_i3c_xfer *xfer;
	struct dw_i3c_cmd *cmd;
	u32 olddevs, newdevs;
	u8 p, last_addr = 0;
	int ret, pos;

	olddevs = ~(master->free_pos);

	/* Prepare DAT before launching DAA. */
	for (pos = 0; pos < master->maxdevs; pos++) {
		if (olddevs & FUNC0(pos))
			continue;

		ret = FUNC15(m, last_addr + 1);
		if (ret < 0)
			return -ENOSPC;

		master->addrs[pos] = ret;
		p = FUNC12(ret);
		last_addr = ret;
		ret |= (p << 7);

		FUNC18(FUNC4(ret),
		       master->regs +
		       FUNC5(master->datstartaddr, pos));
	}

	xfer = FUNC7(master, 1);
	if (!xfer)
		return -ENOMEM;

	pos = FUNC11(master);
	cmd = &xfer->cmds[0];
	cmd->cmd_hi = 0x1;
	cmd->cmd_lo = FUNC2(master->maxdevs - pos) |
		      FUNC3(pos) |
		      FUNC1(I3C_CCC_ENTDAA) |
		      COMMAND_PORT_ADDR_ASSGN_CMD |
		      COMMAND_PORT_TOC |
		      COMMAND_PORT_ROC;

	FUNC9(master, xfer);
	if (!FUNC17(&xfer->comp, XFER_TIMEOUT))
		FUNC8(master, xfer);

	newdevs = FUNC6(master->maxdevs - cmd->rx_len - 1, 0);
	newdevs &= ~olddevs;

	for (pos = 0; pos < master->maxdevs; pos++) {
		if (newdevs & FUNC0(pos))
			FUNC13(m, master->addrs[pos]);
	}

	FUNC10(xfer);

	FUNC14(m, I3C_BROADCAST_ADDR,
				I3C_CCC_EVENT_HJ |
				I3C_CCC_EVENT_MR |
				I3C_CCC_EVENT_SIR);

	return 0;
}