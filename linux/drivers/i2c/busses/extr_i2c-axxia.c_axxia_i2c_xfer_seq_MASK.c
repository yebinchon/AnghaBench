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
typedef  int u32 ;
struct i2c_msg {int len; } ;
struct axxia_i2c_dev {int last; int msg_err; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  msg_complete; scalar_t__ msg_xfrd_r; scalar_t__ msg_xfrd; struct i2c_msg* msg_r; struct i2c_msg* msg; } ;

/* Variables and functions */
 int CMD_BUSY ; 
 int CMD_SEQUENCE ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  I2C_XFER_TIMEOUT ; 
 scalar_t__ MST_COMMAND ; 
 scalar_t__ MST_RX_XFER ; 
 int MST_STATUS_ERR ; 
 int MST_STATUS_RFL ; 
 int MST_STATUS_SS ; 
 scalar_t__ MST_TX_XFER ; 
 int /*<<< orphan*/  FUNC0 (struct axxia_i2c_dev*) ; 
 scalar_t__ FUNC1 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct axxia_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct axxia_i2c_dev*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct axxia_i2c_dev*,int) ; 
 scalar_t__ FUNC6 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct axxia_i2c_dev *idev, struct i2c_msg msgs[])
{
	u32 int_mask = MST_STATUS_ERR | MST_STATUS_SS | MST_STATUS_RFL;
	u32 rlen = FUNC6(&msgs[1]) ? I2C_SMBUS_BLOCK_MAX : msgs[1].len;
	unsigned long time_left;

	FUNC3(idev, &msgs[0]);

	FUNC12(msgs[0].len, idev->base + MST_TX_XFER);
	FUNC12(rlen, idev->base + MST_RX_XFER);

	idev->msg = &msgs[0];
	idev->msg_r = &msgs[1];
	idev->msg_xfrd = 0;
	idev->msg_xfrd_r = 0;
	idev->last = true;
	FUNC0(idev);

	FUNC12(CMD_SEQUENCE, idev->base + MST_COMMAND);

	FUNC9(&idev->msg_complete);
	FUNC5(idev, int_mask);

	time_left = FUNC11(&idev->msg_complete,
						I2C_XFER_TIMEOUT);

	if (idev->msg_err == -ENXIO) {
		if (FUNC1(idev))
			FUNC2(idev);
	} else if (FUNC8(idev->base + MST_COMMAND) & CMD_BUSY) {
		FUNC4(idev->dev, "busy after xfer\n");
	}

	if (time_left == 0) {
		idev->msg_err = -ETIMEDOUT;
		FUNC7(&idev->adapter);
		FUNC2(idev);
	}

	if (FUNC10(idev->msg_err) && idev->msg_err != -ENXIO)
		FUNC2(idev);

	return idev->msg_err;
}