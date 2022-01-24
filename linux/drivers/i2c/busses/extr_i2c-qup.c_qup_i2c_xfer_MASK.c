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
struct qup_i2c_dev {int /*<<< orphan*/  dev; struct i2c_msg* msg; scalar_t__ base; scalar_t__ qup_err; scalar_t__ bus_err; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int I2C_MINI_CORE ; 
 int I2C_M_RD ; 
 int I2C_N_VAL ; 
 scalar_t__ QUP_CONFIG ; 
 int /*<<< orphan*/  QUP_RESET_STATE ; 
 scalar_t__ QUP_SW_RESET ; 
 struct qup_i2c_dev* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i2c_msg*) ; 
 int FUNC6 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qup_i2c_dev*) ; 
 int FUNC8 (struct qup_i2c_dev*) ; 
 int FUNC9 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adap,
			struct i2c_msg msgs[],
			int num)
{
	struct qup_i2c_dev *qup = FUNC0(adap);
	int ret, idx;

	ret = FUNC1(qup->dev);
	if (ret < 0)
		goto out;

	qup->bus_err = 0;
	qup->qup_err = 0;

	FUNC10(1, qup->base + QUP_SW_RESET);
	ret = FUNC6(qup, QUP_RESET_STATE);
	if (ret)
		goto out;

	/* Configure QUP as I2C mini core */
	FUNC10(I2C_MINI_CORE | I2C_N_VAL, qup->base + QUP_CONFIG);

	for (idx = 0; idx < num; idx++) {
		if (FUNC7(qup)) {
			ret = -EIO;
			goto out;
		}

		if (FUNC5(&msgs[idx])) {
			ret = -EINVAL;
			goto out;
		}

		qup->msg = &msgs[idx];
		if (msgs[idx].flags & I2C_M_RD)
			ret = FUNC8(qup);
		else
			ret = FUNC9(qup);

		if (ret)
			break;

		ret = FUNC4(qup, QUP_RESET_STATE);
		if (ret)
			break;
	}

	if (ret == 0)
		ret = num;
out:

	FUNC2(qup->dev);
	FUNC3(qup->dev);

	return ret;
}