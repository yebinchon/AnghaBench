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
struct qup_i2c_dev {int use_dma; int is_last; int /*<<< orphan*/  dev; struct i2c_msg* msg; int /*<<< orphan*/  xfer; scalar_t__ base; scalar_t__ qup_err; scalar_t__ bus_err; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_MINI_CORE ; 
 int I2C_M_RD ; 
 int I2C_N_VAL_V2 ; 
 int /*<<< orphan*/  ONE_BYTE ; 
 scalar_t__ QUP_CONFIG ; 
 scalar_t__ QUP_I2C_MASTER_GEN ; 
 int /*<<< orphan*/  QUP_RESET_STATE ; 
 scalar_t__ QUP_SW_RESET ; 
 int QUP_V2_TAGS_EN ; 
 struct qup_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int FUNC5 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qup_i2c_dev*) ; 
 int FUNC8 (struct qup_i2c_dev*,struct i2c_msg*,int) ; 
 int FUNC9 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct qup_i2c_dev*) ; 
 int FUNC11 (struct qup_i2c_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct i2c_adapter *adap,
			   struct i2c_msg msgs[],
			   int num)
{
	struct qup_i2c_dev *qup = FUNC0(adap);
	int ret, idx = 0;

	qup->bus_err = 0;
	qup->qup_err = 0;

	ret = FUNC1(qup->dev);
	if (ret < 0)
		goto out;

	ret = FUNC8(qup, msgs, num);
	if (ret)
		goto out;

	FUNC13(1, qup->base + QUP_SW_RESET);
	ret = FUNC9(qup, QUP_RESET_STATE);
	if (ret)
		goto out;

	/* Configure QUP as I2C mini core */
	FUNC13(I2C_MINI_CORE | I2C_N_VAL_V2, qup->base + QUP_CONFIG);
	FUNC13(QUP_V2_TAGS_EN, qup->base + QUP_I2C_MASTER_GEN);

	if (FUNC10(qup)) {
		ret = -EIO;
		goto out;
	}

	if (qup->use_dma) {
		FUNC12(&qup->xfer);
		ret = FUNC4(adap, &msgs[0], num);
		qup->use_dma = false;
	} else {
		FUNC7(qup);

		for (idx = 0; idx < num; idx++) {
			qup->msg = &msgs[idx];
			qup->is_last = idx == (num - 1);

			ret = FUNC11(qup, idx,
					!!(msgs[idx].flags & I2C_M_RD));
			if (ret)
				break;
		}
		qup->msg = NULL;
	}

	if (!ret)
		ret = FUNC5(qup, ONE_BYTE);

	if (!ret)
		FUNC6(qup, QUP_RESET_STATE);

	if (ret == 0)
		ret = num;
out:
	FUNC2(qup->dev);
	FUNC3(qup->dev);

	return ret;
}