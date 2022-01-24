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
struct TYPE_4__ {scalar_t__ sg_cnt; } ;
struct TYPE_3__ {scalar_t__ sg_cnt; } ;
struct qup_i2c_dev {int clk_ctl; int is_last; scalar_t__ max_xfer_sg_len; struct i2c_msg* msg; int /*<<< orphan*/  irq; TYPE_2__ brx; TYPE_1__ btx; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int QUP_BAM_MODE ; 
 scalar_t__ QUP_I2C_CLK_CTL ; 
 scalar_t__ QUP_IO_MODE ; 
 scalar_t__ QUP_MX_INPUT_CNT ; 
 scalar_t__ QUP_MX_OUTPUT_CNT ; 
 scalar_t__ QUP_OPERATIONAL_MASK ; 
 int QUP_REPACK_EN ; 
 int /*<<< orphan*/  QUP_RUN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qup_i2c_dev* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qup_i2c_dev*) ; 
 int FUNC4 (struct qup_i2c_dev*,struct i2c_msg*) ; 
 int FUNC5 (struct qup_i2c_dev*) ; 
 int FUNC6 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adap, struct i2c_msg *msg,
			    int num)
{
	struct qup_i2c_dev *qup = FUNC2(adap);
	int ret = 0;
	int idx = 0;

	FUNC1(qup->irq);
	ret = FUNC7(qup);

	if (ret)
		goto out;

	FUNC8(0, qup->base + QUP_MX_INPUT_CNT);
	FUNC8(0, qup->base + QUP_MX_OUTPUT_CNT);

	/* set BAM mode */
	FUNC8(QUP_REPACK_EN | QUP_BAM_MODE, qup->base + QUP_IO_MODE);

	/* mask fifo irqs */
	FUNC8((0x3 << 8), qup->base + QUP_OPERATIONAL_MASK);

	/* set RUN STATE */
	ret = FUNC6(qup, QUP_RUN_STATE);
	if (ret)
		goto out;

	FUNC8(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);
	FUNC3(qup);

	for (idx = 0; idx < num; idx++) {
		qup->msg = msg + idx;
		qup->is_last = idx == (num - 1);

		ret = FUNC4(qup, qup->msg);
		if (ret)
			break;

		/*
		 * Make DMA descriptor and schedule the BAM transfer if its
		 * already crossed the maximum length. Since the memory for all
		 * tags buffers have been taken for 2 maximum possible
		 * transfers length so it will never cross the buffer actual
		 * length.
		 */
		if (qup->btx.sg_cnt > qup->max_xfer_sg_len ||
		    qup->brx.sg_cnt > qup->max_xfer_sg_len ||
		    qup->is_last) {
			ret = FUNC5(qup);
			if (ret)
				break;

			FUNC3(qup);
		}
	}

out:
	FUNC0(qup->irq);

	qup->msg = NULL;
	return ret;
}