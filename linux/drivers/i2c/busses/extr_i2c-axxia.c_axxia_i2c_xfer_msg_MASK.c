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
typedef  unsigned int u32 ;
struct i2c_msg {unsigned int len; } ;
struct axxia_i2c_dev {int last; int msg_err; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  msg_complete; scalar_t__ msg_xfrd_r; scalar_t__ msg_xfrd; struct i2c_msg* msg_r; struct i2c_msg* msg; } ;

/* Variables and functions */
 unsigned int CMD_AUTO ; 
 int CMD_BUSY ; 
 unsigned int CMD_MANUAL ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 unsigned int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  I2C_XFER_TIMEOUT ; 
 scalar_t__ MST_COMMAND ; 
 scalar_t__ MST_RX_XFER ; 
 unsigned int MST_STATUS_ERR ; 
 unsigned int MST_STATUS_RFL ; 
 unsigned int MST_STATUS_SNS ; 
 unsigned int MST_STATUS_SS ; 
 unsigned int MST_STATUS_TFL ; 
 scalar_t__ MST_TX_XFER ; 
 scalar_t__ WAIT_TIMER_CONTROL ; 
 unsigned int WT_EN ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct axxia_i2c_dev*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct axxia_i2c_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct axxia_i2c_dev*,unsigned int) ; 
 scalar_t__ FUNC7 (struct i2c_msg*) ; 
 scalar_t__ FUNC8 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct axxia_i2c_dev *idev, struct i2c_msg *msg,
			      bool last)
{
	u32 int_mask = MST_STATUS_ERR;
	u32 rx_xfer, tx_xfer;
	unsigned long time_left;
	unsigned int wt_value;

	idev->msg = msg;
	idev->msg_r = msg;
	idev->msg_xfrd = 0;
	idev->msg_xfrd_r = 0;
	idev->last = last;
	FUNC11(&idev->msg_complete);

	FUNC3(idev, msg);

	if (FUNC7(msg)) {
		/* I2C read transfer */
		rx_xfer = FUNC8(msg) ? I2C_SMBUS_BLOCK_MAX : msg->len;
		tx_xfer = 0;
	} else {
		/* I2C write transfer */
		rx_xfer = 0;
		tx_xfer = msg->len;
	}

	FUNC14(rx_xfer, idev->base + MST_RX_XFER);
	FUNC14(tx_xfer, idev->base + MST_TX_XFER);

	if (FUNC7(msg))
		int_mask |= MST_STATUS_RFL;
	else if (FUNC1(idev) != 0)
		int_mask |= MST_STATUS_TFL;

	wt_value = FUNC0(FUNC10(idev->base + WAIT_TIMER_CONTROL));
	/* Disable wait timer temporarly */
	FUNC14(wt_value, idev->base + WAIT_TIMER_CONTROL);
	/* Check if timeout error happened */
	if (idev->msg_err)
		goto out;

	if (!last) {
		FUNC14(CMD_MANUAL, idev->base + MST_COMMAND);
		int_mask |= MST_STATUS_SNS;
	} else {
		FUNC14(CMD_AUTO, idev->base + MST_COMMAND);
		int_mask |= MST_STATUS_SS;
	}

	FUNC14(WT_EN | wt_value, idev->base + WAIT_TIMER_CONTROL);

	FUNC6(idev, int_mask);

	time_left = FUNC13(&idev->msg_complete,
					      I2C_XFER_TIMEOUT);

	FUNC5(idev, int_mask);

	if (FUNC10(idev->base + MST_COMMAND) & CMD_BUSY)
		FUNC4(idev->dev, "busy after xfer\n");

	if (time_left == 0) {
		idev->msg_err = -ETIMEDOUT;
		FUNC9(&idev->adapter);
		FUNC2(idev);
	}

out:
	if (FUNC12(idev->msg_err) && idev->msg_err != -ENXIO &&
			idev->msg_err != -ETIMEDOUT)
		FUNC2(idev);

	return idev->msg_err;
}