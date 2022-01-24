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
typedef  int u16 ;
struct omap_i2c_dev {int receiver; int buf_len; int cmd_err; int speed; int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_complete; scalar_t__ b_hw; int /*<<< orphan*/  buf; } ;
struct i2c_msg {int addr; int len; int flags; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_RD ; 
 int I2C_M_STOP ; 
 int I2C_M_TEN ; 
 int /*<<< orphan*/  OMAP_I2C_BUF_REG ; 
 int OMAP_I2C_BUF_RXFIF_CLR ; 
 int OMAP_I2C_BUF_TXFIF_CLR ; 
 int /*<<< orphan*/  OMAP_I2C_CNT_REG ; 
 int OMAP_I2C_CON_EN ; 
 int OMAP_I2C_CON_MST ; 
 int OMAP_I2C_CON_OPMODE_HS ; 
 int /*<<< orphan*/  OMAP_I2C_CON_REG ; 
 int OMAP_I2C_CON_STP ; 
 int OMAP_I2C_CON_STT ; 
 int OMAP_I2C_CON_TRX ; 
 int OMAP_I2C_CON_XA ; 
 int /*<<< orphan*/  OMAP_I2C_SA_REG ; 
 int OMAP_I2C_STAT_AL ; 
 int OMAP_I2C_STAT_NACK ; 
 int OMAP_I2C_STAT_ROVR ; 
 int OMAP_I2C_STAT_XUDF ; 
 unsigned long OMAP_I2C_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct omap_i2c_dev* FUNC5 (struct i2c_adapter*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct omap_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_i2c_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_i2c_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct omap_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct i2c_adapter *adap,
			     struct i2c_msg *msg, int stop, bool polling)
{
	struct omap_i2c_dev *omap = FUNC5(adap);
	unsigned long timeout;
	u16 w;
	int ret;

	FUNC3(omap->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
		msg->addr, msg->len, msg->flags, stop);

	omap->receiver = !!(msg->flags & I2C_M_RD);
	FUNC9(omap, msg->len, omap->receiver);

	FUNC11(omap, OMAP_I2C_SA_REG, msg->addr);

	/* REVISIT: Could the STB bit of I2C_CON be used with probing? */
	omap->buf = msg->buf;
	omap->buf_len = msg->len;

	/* make sure writes to omap->buf_len are ordered */
	FUNC1();

	FUNC11(omap, OMAP_I2C_CNT_REG, omap->buf_len);

	/* Clear the FIFO Buffers */
	w = FUNC7(omap, OMAP_I2C_BUF_REG);
	w |= OMAP_I2C_BUF_RXFIF_CLR | OMAP_I2C_BUF_TXFIF_CLR;
	FUNC11(omap, OMAP_I2C_BUF_REG, w);

	if (!polling)
		FUNC13(&omap->cmd_complete);
	omap->cmd_err = 0;

	w = OMAP_I2C_CON_EN | OMAP_I2C_CON_MST | OMAP_I2C_CON_STT;

	/* High speed configuration */
	if (omap->speed > 400)
		w |= OMAP_I2C_CON_OPMODE_HS;

	if (msg->flags & I2C_M_STOP)
		stop = 1;
	if (msg->flags & I2C_M_TEN)
		w |= OMAP_I2C_CON_XA;
	if (!(msg->flags & I2C_M_RD))
		w |= OMAP_I2C_CON_TRX;

	if (!omap->b_hw && stop)
		w |= OMAP_I2C_CON_STP;
	/*
	 * NOTE: STAT_BB bit could became 1 here if another master occupy
	 * the bus. IP successfully complete transfer when the bus will be
	 * free again (BB reset to 0).
	 */
	FUNC11(omap, OMAP_I2C_CON_REG, w);

	/*
	 * Don't write stt and stp together on some hardware.
	 */
	if (omap->b_hw && stop) {
		unsigned long delay = jiffies + OMAP_I2C_TIMEOUT;
		u16 con = FUNC7(omap, OMAP_I2C_CON_REG);
		while (con & OMAP_I2C_CON_STT) {
			con = FUNC7(omap, OMAP_I2C_CON_REG);

			/* Let the user know if i2c is in a bad state */
			if (FUNC14(jiffies, delay)) {
				FUNC4(omap->dev, "controller timed out "
				"waiting for start condition to finish\n");
				return -ETIMEDOUT;
			}
			FUNC2();
		}

		w |= OMAP_I2C_CON_STP;
		w &= ~OMAP_I2C_CON_STT;
		FUNC11(omap, OMAP_I2C_CON_REG, w);
	}

	/*
	 * REVISIT: We should abort the transfer on signals, but the bus goes
	 * into arbitration and we're currently unable to recover from it.
	 */
	if (!polling) {
		timeout = FUNC15(&omap->cmd_complete,
						      OMAP_I2C_TIMEOUT);
	} else {
		do {
			FUNC10(omap);
			ret = FUNC12(omap);
		} while (ret == -EAGAIN);

		timeout = !ret;
	}

	if (timeout == 0) {
		FUNC4(omap->dev, "controller timed out\n");
		FUNC8(omap);
		FUNC0(omap);
		return -ETIMEDOUT;
	}

	if (FUNC6(!omap->cmd_err))
		return 0;

	/* We have an error */
	if (omap->cmd_err & (OMAP_I2C_STAT_ROVR | OMAP_I2C_STAT_XUDF)) {
		FUNC8(omap);
		FUNC0(omap);
		return -EIO;
	}

	if (omap->cmd_err & OMAP_I2C_STAT_AL)
		return -EAGAIN;

	if (omap->cmd_err & OMAP_I2C_STAT_NACK) {
		if (msg->flags & I2C_M_IGNORE_NAK)
			return 0;

		w = FUNC7(omap, OMAP_I2C_CON_REG);
		w |= OMAP_I2C_CON_STP;
		FUNC11(omap, OMAP_I2C_CON_REG, w);
		return -EREMOTEIO;
	}
	return -EIO;
}