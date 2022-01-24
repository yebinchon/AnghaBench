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
struct i3c_master_controller {int dummy; } ;
struct i2c_msg {scalar_t__ len; int flags; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_dev_desc {int dummy; } ;
struct cdns_i3c_xfer {int ret; int /*<<< orphan*/  comp; struct cdns_i3c_cmd* cmds; } ;
struct TYPE_2__ {int cmdfifodepth; unsigned int txfifodepth; unsigned int rxfifodepth; } ;
struct cdns_i3c_master {TYPE_1__ caps; } ;
struct cdns_i3c_cmd {int cmd0; scalar_t__ rx_len; scalar_t__ tx_len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  rx_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CMD0_FIFO_IS_10B ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ CMD0_FIFO_PL_LEN_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CMD0_FIFO_RNW ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int I2C_M_RD ; 
 int I2C_M_TEN ; 
 int /*<<< orphan*/  XMIT_BURST_WITHOUT_SUBADDR ; 
 struct cdns_i3c_xfer* FUNC4 (struct cdns_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns_i3c_master*,struct cdns_i3c_xfer*) ; 
 struct i3c_master_controller* FUNC8 (struct i2c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct cdns_i3c_master* FUNC10 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_dev_desc *dev,
				     const struct i2c_msg *xfers, int nxfers)
{
	struct i3c_master_controller *m = FUNC8(dev);
	struct cdns_i3c_master *master = FUNC10(m);
	unsigned int nrxwords = 0, ntxwords = 0;
	struct cdns_i3c_xfer *xfer;
	int i, ret = 0;

	if (nxfers > master->caps.cmdfifodepth)
		return -ENOTSUPP;

	for (i = 0; i < nxfers; i++) {
		if (xfers[i].len > CMD0_FIFO_PL_LEN_MAX)
			return -ENOTSUPP;

		if (xfers[i].flags & I2C_M_RD)
			nrxwords += FUNC3(xfers[i].len, 4);
		else
			ntxwords += FUNC3(xfers[i].len, 4);
	}

	if (ntxwords > master->caps.txfifodepth ||
	    nrxwords > master->caps.rxfifodepth)
		return -ENOTSUPP;

	xfer = FUNC4(master, nxfers);
	if (!xfer)
		return -ENOMEM;

	for (i = 0; i < nxfers; i++) {
		struct cdns_i3c_cmd *ccmd = &xfer->cmds[i];

		ccmd->cmd0 = FUNC0(xfers[i].addr) |
			FUNC1(xfers[i].len) |
			FUNC2(XMIT_BURST_WITHOUT_SUBADDR);

		if (xfers[i].flags & I2C_M_TEN)
			ccmd->cmd0 |= CMD0_FIFO_IS_10B;

		if (xfers[i].flags & I2C_M_RD) {
			ccmd->cmd0 |= CMD0_FIFO_RNW;
			ccmd->rx_buf = xfers[i].buf;
			ccmd->rx_len = xfers[i].len;
		} else {
			ccmd->tx_buf = xfers[i].buf;
			ccmd->tx_len = xfers[i].len;
		}
	}

	FUNC6(master, xfer);
	if (!FUNC11(&xfer->comp, FUNC9(1000)))
		FUNC7(master, xfer);

	ret = xfer->ret;
	FUNC5(xfer);

	return ret;
}