#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct i3c_priv_xfer {scalar_t__ len; int /*<<< orphan*/  err; TYPE_3__ data; scalar_t__ rnw; } ;
struct i3c_master_controller {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dyn_addr; } ;
struct i3c_dev_desc {TYPE_2__ info; } ;
struct cdns_i3c_xfer {int ret; struct cdns_i3c_cmd* cmds; int /*<<< orphan*/  comp; } ;
struct TYPE_4__ {int cmdfifodepth; int cmdrfifodepth; int rxfifodepth; int txfifodepth; } ;
struct cdns_i3c_master {TYPE_1__ caps; } ;
struct cdns_i3c_cmd {int cmd0; scalar_t__ rx_len; scalar_t__ tx_len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  rx_buf; } ;

/* Variables and functions */
 int CMD0_FIFO_BCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ CMD0_FIFO_PL_LEN_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CMD0_FIFO_RNW ; 
 int CMD0_FIFO_RSBC ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  XMIT_BURST_WITHOUT_SUBADDR ; 
 int /*<<< orphan*/  FUNC4 (struct cdns_i3c_cmd*) ; 
 struct cdns_i3c_xfer* FUNC5 (struct cdns_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 struct i3c_master_controller* FUNC9 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct cdns_i3c_master* FUNC11 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i3c_dev_desc *dev,
				      struct i3c_priv_xfer *xfers,
				      int nxfers)
{
	struct i3c_master_controller *m = FUNC9(dev);
	struct cdns_i3c_master *master = FUNC11(m);
	int txslots = 0, rxslots = 0, i, ret;
	struct cdns_i3c_xfer *cdns_xfer;

	for (i = 0; i < nxfers; i++) {
		if (xfers[i].len > CMD0_FIFO_PL_LEN_MAX)
			return -ENOTSUPP;
	}

	if (!nxfers)
		return 0;

	if (nxfers > master->caps.cmdfifodepth ||
	    nxfers > master->caps.cmdrfifodepth)
		return -ENOTSUPP;

	/*
	 * First make sure that all transactions (block of transfers separated
	 * by a STOP marker) fit in the FIFOs.
	 */
	for (i = 0; i < nxfers; i++) {
		if (xfers[i].rnw)
			rxslots += FUNC3(xfers[i].len, 4);
		else
			txslots += FUNC3(xfers[i].len, 4);
	}

	if (rxslots > master->caps.rxfifodepth ||
	    txslots > master->caps.txfifodepth)
		return -ENOTSUPP;

	cdns_xfer = FUNC5(master, nxfers);
	if (!cdns_xfer)
		return -ENOMEM;

	for (i = 0; i < nxfers; i++) {
		struct cdns_i3c_cmd *ccmd = &cdns_xfer->cmds[i];
		u32 pl_len = xfers[i].len;

		ccmd->cmd0 = FUNC0(dev->info.dyn_addr) |
			FUNC2(XMIT_BURST_WITHOUT_SUBADDR);

		if (xfers[i].rnw) {
			ccmd->cmd0 |= CMD0_FIFO_RNW;
			ccmd->rx_buf = xfers[i].data.in;
			ccmd->rx_len = xfers[i].len;
			pl_len++;
		} else {
			ccmd->tx_buf = xfers[i].data.out;
			ccmd->tx_len = xfers[i].len;
		}

		ccmd->cmd0 |= FUNC1(pl_len);

		if (i < nxfers - 1)
			ccmd->cmd0 |= CMD0_FIFO_RSBC;

		if (!i)
			ccmd->cmd0 |= CMD0_FIFO_BCH;
	}

	FUNC7(master, cdns_xfer);
	if (!FUNC12(&cdns_xfer->comp,
					 FUNC10(1000)))
		FUNC8(master, cdns_xfer);

	ret = cdns_xfer->ret;

	for (i = 0; i < nxfers; i++)
		xfers[i].err = FUNC4(&cdns_xfer->cmds[i]);

	FUNC6(cdns_xfer);

	return ret;
}