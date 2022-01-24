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
struct mxs_i2c_dev {int cmd_err; scalar_t__ dev_type; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  cmd_complete; } ;
struct i2c_msg {int len; int flags; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 int MXS_I2C_CTRL0_POST_SEND_STOP ; 
 int /*<<< orphan*/  MXS_I2C_CTRL1_CLR_GOT_A_NAK ; 
 scalar_t__ MXS_I2C_CTRL1_SET ; 
 scalar_t__ MXS_I2C_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct mxs_i2c_dev* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxs_i2c_dev*) ; 
 int FUNC4 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int FUNC5 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int FUNC6 (struct mxs_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *adap, struct i2c_msg *msg,
				int stop)
{
	struct mxs_i2c_dev *i2c = FUNC1(adap);
	int ret;
	int flags;
	int use_pio = 0;
	unsigned long time_left;

	flags = stop ? MXS_I2C_CTRL0_POST_SEND_STOP : 0;

	FUNC0(i2c->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
		msg->addr, msg->len, msg->flags, stop);

	/*
	 * The MX28 I2C IP block can only do PIO READ for transfer of to up
	 * 4 bytes of length. The write transfer is not limited as it can use
	 * clock stretching to avoid FIFO underruns.
	 */
	if ((msg->flags & I2C_M_RD) && (msg->len <= 4))
		use_pio = 1;
	if (!(msg->flags & I2C_M_RD) && (msg->len < 7))
		use_pio = 1;

	i2c->cmd_err = 0;
	if (use_pio) {
		ret = FUNC5(adap, msg, flags);
		/* No need to reset the block if NAK was received. */
		if (ret && (ret != -ENXIO))
			FUNC6(i2c);
	} else {
		FUNC7(&i2c->cmd_complete);
		ret = FUNC4(adap, msg, flags);
		if (ret)
			return ret;

		time_left = FUNC8(&i2c->cmd_complete,
						FUNC2(1000));
		if (!time_left)
			goto timeout;

		ret = i2c->cmd_err;
	}

	if (ret == -ENXIO) {
		/*
		 * If the transfer fails with a NAK from the slave the
		 * controller halts until it gets told to return to idle state.
		 */
		FUNC9(MXS_I2C_CTRL1_CLR_GOT_A_NAK,
		       i2c->regs + MXS_I2C_CTRL1_SET);
	}

	/*
	 * WARNING!
	 * The i.MX23 is strange. After each and every operation, it's I2C IP
	 * block must be reset, otherwise the IP block will misbehave. This can
	 * be observed on the bus by the block sending out one single byte onto
	 * the bus. In case such an error happens, bit 27 will be set in the
	 * DEBUG0 register. This bit is not documented in the i.MX23 datasheet
	 * and is marked as "TBD" instead. To reset this bit to a correct state,
	 * reset the whole block. Since the block reset does not take long, do
	 * reset the block after every transfer to play safe.
	 */
	if (i2c->dev_type == MXS_I2C_V1)
		FUNC6(i2c);

	FUNC0(i2c->dev, "Done with err=%d\n", ret);

	return ret;

timeout:
	FUNC0(i2c->dev, "Timeout!\n");
	FUNC3(i2c);
	ret = FUNC6(i2c);
	if (ret)
		return ret;

	return -ETIMEDOUT;
}