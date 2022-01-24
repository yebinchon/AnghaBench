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
struct qup_i2c_block {int cur_data; int /*<<< orphan*/  tx_fifo_free; int /*<<< orphan*/  is_tx_blk_mode; } ;
struct qup_i2c_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  out_fifo_sz; int /*<<< orphan*/  xfer; scalar_t__ base; int /*<<< orphan*/  clk_ctl; int /*<<< orphan*/  config_run; scalar_t__ is_smbus_read; struct i2c_msg* msg; struct qup_i2c_block blk; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ QUP_I2C_CLK_CTL ; 
 int /*<<< orphan*/  QUP_I2C_MX_CONFIG_DURING_RUN ; 
 int /*<<< orphan*/  QUP_PAUSE_STATE ; 
 int /*<<< orphan*/  QUP_RUN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct qup_i2c_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct qup_i2c_dev*) ; 
 int FUNC6 (struct qup_i2c_dev*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(struct qup_i2c_dev *qup, bool is_rx, bool is_first,
		     bool change_pause_state)
{
	struct qup_i2c_block *blk = &qup->blk;
	struct i2c_msg *msg = qup->msg;
	int ret;

	/*
	 * Check if its SMBus Block read for which the top level read will be
	 * done into 2 QUP reads. One with message length 1 while other one is
	 * with actual length.
	 */
	if (FUNC3(msg)) {
		if (qup->is_smbus_read) {
			/*
			 * If the message length is already read in
			 * the first byte of the buffer, account for
			 * that by setting the offset
			 */
			blk->cur_data += 1;
			is_first = false;
		} else {
			change_pause_state = false;
		}
	}

	qup->config_run = is_first ? 0 : QUP_I2C_MX_CONFIG_DURING_RUN;

	FUNC4(blk);
	FUNC5(qup);

	/* If it is first sub transfer, then configure i2c bus clocks */
	if (is_first) {
		ret = FUNC2(qup, QUP_RUN_STATE);
		if (ret)
			return ret;

		FUNC10(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);

		ret = FUNC2(qup, QUP_PAUSE_STATE);
		if (ret)
			return ret;
	}

	FUNC9(&qup->xfer);
	FUNC1(qup->irq);
	/*
	 * In FIFO mode, tx FIFO can be written directly while in block mode the
	 * it will be written after getting OUT_BLOCK_WRITE_REQ interrupt
	 */
	if (!blk->is_tx_blk_mode) {
		blk->tx_fifo_free = qup->out_fifo_sz;

		if (is_rx)
			FUNC7(qup);
		else
			FUNC8(qup);
	}

	ret = FUNC2(qup, QUP_RUN_STATE);
	if (ret)
		goto err;

	ret = FUNC6(qup, msg);
	if (ret)
		goto err;

	/* Move to pause state for all the transfers, except last one */
	if (change_pause_state) {
		ret = FUNC2(qup, QUP_PAUSE_STATE);
		if (ret)
			goto err;
	}

err:
	FUNC0(qup->irq);
	return ret;
}