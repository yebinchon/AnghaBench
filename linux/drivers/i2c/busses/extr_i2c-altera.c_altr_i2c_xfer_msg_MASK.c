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
struct i2c_msg {int flags; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct altr_i2c_dev {int msg_err; int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  buf; int /*<<< orphan*/  msg_len; struct i2c_msg* msg; } ;

/* Variables and functions */
 int ALTR_I2C_ISER_RXOF_EN ; 
 int ALTR_I2C_ISER_RXRDY_EN ; 
 int ALTR_I2C_ISR_ARB ; 
 int ALTR_I2C_ISR_NACK ; 
 int ALTR_I2C_ISR_RXOF ; 
 int ALTR_I2C_ISR_TXRDY ; 
 scalar_t__ ALTR_I2C_RX_DATA ; 
 scalar_t__ ALTR_I2C_RX_FIFO_LVL ; 
 scalar_t__ ALTR_I2C_STATUS ; 
 int ALTR_I2C_STAT_CORE ; 
 scalar_t__ ALTR_I2C_TFR_CMD ; 
 int ALTR_I2C_TFR_CMD_STA ; 
 int /*<<< orphan*/  ALTR_I2C_XFER_TIMEOUT ; 
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct altr_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct altr_i2c_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct altr_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct i2c_msg*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct altr_i2c_dev *idev, struct i2c_msg *msg)
{
	u32 imask = ALTR_I2C_ISR_RXOF | ALTR_I2C_ISR_ARB | ALTR_I2C_ISR_NACK;
	unsigned long time_left;
	u32 value;
	u8 addr = FUNC7(msg);

	idev->msg = msg;
	idev->msg_len = msg->len;
	idev->buf = msg->buf;
	idev->msg_err = 0;
	FUNC9(&idev->msg_complete);
	FUNC1(idev);

	/* Make sure RX FIFO is empty */
	do {
		FUNC8(idev->base + ALTR_I2C_RX_DATA);
	} while (FUNC8(idev->base + ALTR_I2C_RX_FIFO_LVL));

	FUNC11(ALTR_I2C_TFR_CMD_STA | addr, idev->base + ALTR_I2C_TFR_CMD);

	if ((msg->flags & I2C_M_RD) != 0) {
		imask |= ALTR_I2C_ISER_RXOF_EN | ALTR_I2C_ISER_RXRDY_EN;
		FUNC3(idev, imask, true);
		/* write the first byte to start the RX */
		FUNC4(idev, 0);
	} else {
		imask |= ALTR_I2C_ISR_TXRDY;
		FUNC3(idev, imask, true);
		FUNC2(idev);
	}

	time_left = FUNC10(&idev->msg_complete,
						ALTR_I2C_XFER_TIMEOUT);
	FUNC3(idev, imask, false);

	value = FUNC8(idev->base + ALTR_I2C_STATUS) & ALTR_I2C_STAT_CORE;
	if (value)
		FUNC6(idev->dev, "Core Status not IDLE...\n");

	if (time_left == 0) {
		idev->msg_err = -ETIMEDOUT;
		FUNC5(idev->dev, "Transaction timed out.\n");
	}

	FUNC0(idev);

	return idev->msg_err;
}