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
struct qup_i2c_block {int /*<<< orphan*/  tx_fifo_free; int /*<<< orphan*/  is_tx_blk_mode; } ;
struct qup_i2c_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  msg; int /*<<< orphan*/  out_fifo_sz; int /*<<< orphan*/  xfer; scalar_t__ base; int /*<<< orphan*/  clk_ctl; struct qup_i2c_block blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONE_BYTE ; 
 scalar_t__ QUP_I2C_CLK_CTL ; 
 int /*<<< orphan*/  QUP_PAUSE_STATE ; 
 int /*<<< orphan*/  QUP_RUN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qup_i2c_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct qup_i2c_dev*) ; 
 int FUNC6 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct qup_i2c_dev *qup, bool is_rx)
{
	struct qup_i2c_block *blk = &qup->blk;
	int ret;

	FUNC4(blk);
	FUNC5(qup);
	ret = FUNC3(qup, QUP_RUN_STATE);
	if (ret)
		return ret;

	FUNC10(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);

	ret = FUNC3(qup, QUP_PAUSE_STATE);
	if (ret)
		return ret;

	FUNC9(&qup->xfer);
	FUNC1(qup->irq);
	if (!blk->is_tx_blk_mode) {
		blk->tx_fifo_free = qup->out_fifo_sz;

		if (is_rx)
			FUNC7(qup);
		else
			FUNC8(qup);
	}

	ret = FUNC3(qup, QUP_RUN_STATE);
	if (ret)
		goto err;

	ret = FUNC6(qup, qup->msg);
	if (ret)
		goto err;

	ret = FUNC2(qup, ONE_BYTE);

err:
	FUNC0(qup->irq);
	return ret;
}