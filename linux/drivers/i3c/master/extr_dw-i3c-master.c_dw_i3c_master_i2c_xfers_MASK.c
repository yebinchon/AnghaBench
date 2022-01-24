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
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_dev_desc {int dummy; } ;
struct dw_i3c_xfer {int ret; int /*<<< orphan*/  comp; struct dw_i3c_cmd* cmds; } ;
struct TYPE_2__ {int cmdfifodepth; unsigned int datafifodepth; } ;
struct dw_i3c_master {TYPE_1__ caps; } ;
struct dw_i3c_i2c_dev_data {int /*<<< orphan*/  index; } ;
struct dw_i3c_cmd {int cmd_hi; int cmd_lo; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  rx_len; int /*<<< orphan*/  rx_buf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int COMMAND_PORT_READ_TRANSFER ; 
 int COMMAND_PORT_ROC ; 
 int FUNC2 (int) ; 
 int COMMAND_PORT_TOC ; 
 int COMMAND_PORT_TRANSFER_ARG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  XFER_TIMEOUT ; 
 struct dw_i3c_xfer* FUNC4 (struct dw_i3c_master*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_i3c_master*,struct dw_i3c_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_i3c_xfer*) ; 
 struct i3c_master_controller* FUNC8 (struct i2c_dev_desc*) ; 
 struct dw_i3c_i2c_dev_data* FUNC9 (struct i2c_dev_desc*) ; 
 struct dw_i3c_master* FUNC10 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_dev_desc *dev,
				   const struct i2c_msg *i2c_xfers,
				   int i2c_nxfers)
{
	struct dw_i3c_i2c_dev_data *data = FUNC9(dev);
	struct i3c_master_controller *m = FUNC8(dev);
	struct dw_i3c_master *master = FUNC10(m);
	unsigned int nrxwords = 0, ntxwords = 0;
	struct dw_i3c_xfer *xfer;
	int i, ret = 0;

	if (!i2c_nxfers)
		return 0;

	if (i2c_nxfers > master->caps.cmdfifodepth)
		return -ENOTSUPP;

	for (i = 0; i < i2c_nxfers; i++) {
		if (i2c_xfers[i].flags & I2C_M_RD)
			nrxwords += FUNC3(i2c_xfers[i].len, 4);
		else
			ntxwords += FUNC3(i2c_xfers[i].len, 4);
	}

	if (ntxwords > master->caps.datafifodepth ||
	    nrxwords > master->caps.datafifodepth)
		return -ENOTSUPP;

	xfer = FUNC4(master, i2c_nxfers);
	if (!xfer)
		return -ENOMEM;

	for (i = 0; i < i2c_nxfers; i++) {
		struct dw_i3c_cmd *cmd = &xfer->cmds[i];

		cmd->cmd_hi = FUNC0(i2c_xfers[i].len) |
			COMMAND_PORT_TRANSFER_ARG;

		cmd->cmd_lo = FUNC2(i) |
			      FUNC1(data->index) |
			      COMMAND_PORT_ROC;

		if (i2c_xfers[i].flags & I2C_M_RD) {
			cmd->cmd_lo |= COMMAND_PORT_READ_TRANSFER;
			cmd->rx_buf = i2c_xfers[i].buf;
			cmd->rx_len = i2c_xfers[i].len;
		} else {
			cmd->tx_buf = i2c_xfers[i].buf;
			cmd->tx_len = i2c_xfers[i].len;
		}

		if (i == (i2c_nxfers - 1))
			cmd->cmd_lo |= COMMAND_PORT_TOC;
	}

	FUNC6(master, xfer);
	if (!FUNC11(&xfer->comp, XFER_TIMEOUT))
		FUNC5(master, xfer);

	ret = xfer->ret;
	FUNC7(xfer);

	return ret;
}